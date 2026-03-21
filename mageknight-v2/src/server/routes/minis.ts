import { Router } from 'express';
import { Prisma } from '@prisma/client';
import db from '../db';
import { MINIATURE_INCLUDE, formatMiniature, SET_NAMES } from '../lib/miniature-format';

const router = Router();

// ---------------------------------------------------------------------------
// GET /api/minis/filters
// Must be registered before /:id so Express doesn't treat "filters" as an id.
// Returns the distinct values needed to populate all filter dropdowns.
// ---------------------------------------------------------------------------
router.get('/filters', async (_req, res, next) => {
  try {
    const [factions, rawRanks, abilities, rawTargets, rawSets] = await Promise.all([
      db.factions.findMany({ orderBy: { name: 'asc' }, select: { name: true } }),
      db.miniatures.findMany({
        where: { rank: { not: null } },
        distinct: ['rank'],
        select: { rank: true },
      }),
      db.abilities.findMany({
        orderBy: { name: 'asc' },
        select: { name: true, color: true },
      }),
      db.miniatures.findMany({
        where: { range_targets: { not: null } },
        distinct: ['range_targets'],
        select: { range_targets: true },
        orderBy: { range_targets: 'asc' },
      }),
      db.miniatures.findMany({
        where: { set_name: { not: null } },
        distinct: ['set_name'],
        select: { set_name: true },
        orderBy: { set_name: 'asc' },
      }),
    ]);

    // The scraper produced inconsistent rank casing (e.g. both "WEAK" and "Weak").
    // Normalise to uppercase and deduplicate so the UI gets a clean list.
    const rankSet = new Set(
      rawRanks.map((r) => r.rank?.toUpperCase()).filter(Boolean) as string[],
    );

    // Build set list sorted by display name, pairing key with display name
    const sets = (rawSets.map((s) => s.set_name).filter(Boolean) as string[])
      .map((key) => ({ key, name: SET_NAMES[key] ?? key }))
      .sort((a, b) => a.name.localeCompare(b.name));

    res.json({
      factions: factions.map((f) => f.name),
      ranks: Array.from(rankSet).sort(),
      abilities: abilities.map((a) => ({ name: a.name, color: a.color })),
      rangeTargets: rawTargets.map((r) => r.range_targets).filter(Boolean) as number[],
      sets,
    });
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// GET /api/minis
//
// All query parameters are optional and combinable.
//
// ability[] uses AND semantics — selecting CHARGE and TOUGHNESS returns only
// minis that have both abilities somewhere on their dial. This is more useful
// than OR when building armies with specific ability requirements.
//
// min_clicks counts only live clicks (not all-zero rows) so it filters minis
// that die too quickly. Implemented as a post-filter in application code
// because Prisma can't efficiently count a filtered relation in a WHERE clause.
// ---------------------------------------------------------------------------
router.get('/', async (req, res, next) => {
  try {
    const {
      name,
      faction,
      rank,
      ability,
      set,
      min_cost,
      max_cost,
      min_speed,
      min_attack,
      min_defense,
      min_damage,
      min_range,
      max_range,
      range_targets,
      min_clicks,
      sort_by = 'name',
      sort_order = 'asc',
    } = req.query;

    const factions     = toArray(faction);
    const ranks        = toArray(rank);
    const abilities    = toArray(ability);
    const sets         = toArray(set);
    const rangeTargets = toArray(range_targets).map(Number).filter((n) => !isNaN(n));

    const where: Prisma.miniaturesWhereInput = {};
    const andConditions: Prisma.miniaturesWhereInput[] = [];

    if (name) {
      where.name = { contains: name as string, mode: 'insensitive' };
    }

    if (factions.length > 0) {
      where.miniature_factions = { some: { factions: { name: { in: factions } } } };
    }

    if (ranks.length > 0) {
      // Case-insensitive because the DB has inconsistent rank casing from scraping
      andConditions.push({
        OR: ranks.map((r) => ({ rank: { equals: r, mode: 'insensitive' as const } })),
      });
    }

    if (min_cost || max_cost) {
      where.point_cost = {};
      if (min_cost) (where.point_cost as Prisma.IntNullableFilter).gte = Number(min_cost);
      if (max_cost) (where.point_cost as Prisma.IntNullableFilter).lte = Number(max_cost);
    }

    if (min_range || max_range) {
      where.range = {};
      if (min_range) (where.range as Prisma.IntNullableFilter).gte = Number(min_range);
      if (max_range) (where.range as Prisma.IntNullableFilter).lte = Number(max_range);
    }

    if (rangeTargets.length > 0) {
      where.range_targets = { in: rangeTargets };
    }

    if (sets.length > 0) {
      where.set_name = { in: sets };
    }

    // Each selected ability is a separate AND condition — the mini must have
    // every selected ability somewhere on its dial.
    for (const abilityName of abilities) {
      andConditions.push({
        click_stats: {
          some: {
            OR: [
              { abilities_click_stats_speed_ability_idToabilities:   { name: abilityName } },
              { abilities_click_stats_attack_ability_idToabilities:  { name: abilityName } },
              { abilities_click_stats_defense_ability_idToabilities: { name: abilityName } },
              { abilities_click_stats_damage_ability_idToabilities:  { name: abilityName } },
            ],
          },
        },
      });
    }

    // Each stat threshold is a separate AND condition so they're independent
    for (const [param, field] of [
      [min_speed,   'speed'],
      [min_attack,  'attack'],
      [min_defense, 'defense'],
      [min_damage,  'damage'],
    ] as const) {
      if (param) {
        andConditions.push({ click_stats: { some: { [field]: { gte: Number(param) } } } });
      }
    }

    if (andConditions.length > 0) {
      where.AND = andConditions;
    }

    const simpleFields  = ['name', 'point_cost', 'set_name', 'rank'] as const;
    const nullableFields = ['peak_score', 'sustained_score', 'overall_score'] as const;
    type SimpleField   = (typeof simpleFields)[number];
    type NullableField = (typeof nullableFields)[number];
    const order = sort_order === 'desc' ? 'desc' : 'asc';

    // Score fields are nullable — sort nulls to the end regardless of direction
    // so minis without scores don't crowd the top/bottom.
    let orderBy: Prisma.miniaturesOrderByWithRelationInput;
    if ((nullableFields as readonly string[]).includes(sort_by as string)) {
      const field = sort_by as NullableField;
      orderBy = { [field]: { sort: order, nulls: 'last' } };
    } else {
      const field: SimpleField = (simpleFields as readonly string[]).includes(sort_by as string)
        ? (sort_by as SimpleField)
        : 'name';
      orderBy = { [field]: order };
    }

    let minis = await db.miniatures.findMany({
      where,
      orderBy,
      include: MINIATURE_INCLUDE,
    });

    // min_clicks: post-filter by number of live (non-KO) clicks.
    // A click is dead when all four stats are zero — matching the physical dial.
    if (min_clicks) {
      const threshold = Number(min_clicks);
      minis = minis.filter((m) => {
        const liveCount = m.click_stats.filter(
          (cs) => !(cs.speed === 0 && cs.attack === 0 && cs.defense === 0 && cs.damage === 0),
        ).length;
        return liveCount >= threshold;
      });
    }

    res.json(minis.map((m) => formatMiniature(m as Parameters<typeof formatMiniature>[0])));
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// GET /api/minis/:id
// ---------------------------------------------------------------------------
router.get('/:id', async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    if (isNaN(id)) {
      res.status(400).json({ error: 'Invalid miniature id' });
      return;
    }

    const mini = await db.miniatures.findUnique({ where: { id }, include: MINIATURE_INCLUDE });

    if (!mini) {
      res.status(404).json({ error: 'Miniature not found' });
      return;
    }

    res.json(formatMiniature(mini as Parameters<typeof formatMiniature>[0]));
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/**
 * Normalises a query param that may be a single string or an array of strings
 * into a consistent string[]. Express parses ?x=a as 'a' and ?x=a&x=b as ['a','b'].
 */
function toArray(param: unknown): string[] {
  if (Array.isArray(param)) return param as string[];
  if (typeof param === 'string') return [param];
  return [];
}

export default router;
