/**
 * Army routes — create and manage named armies built from the user's collection.
 *
 * Armies live at two levels:
 *   - /api/armies        — army CRUD (list, create, rename, delete)
 *   - /api/armies/:id/miniatures — the minis inside a specific army
 *
 * Adding a mini that is already in the army increments its quantity rather
 * than creating a duplicate row, mirroring the collection POST behaviour.
 *
 * Point totals are computed in application code rather than SQL because the
 * dataset is small and keeping the logic here avoids a complex aggregation.
 */

import { Router } from 'express';
import db from '../db';
import { MINIATURE_INCLUDE, formatMiniature } from '../lib/miniature-format';

const router = Router();

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/** Computes total point cost for an army's miniature rows. */
function totalPoints(rows: Array<{ quantity: number; miniatures: { point_cost: number | null } }>): number {
  return rows.reduce((sum, r) => sum + (r.miniatures.point_cost ?? 0) * r.quantity, 0);
}

/** Include shape used when the full mini dial is needed. */
const ARMY_MINI_INCLUDE = {
  miniatures: { include: MINIATURE_INCLUDE },
} as const;

// ---------------------------------------------------------------------------
// GET /api/armies
// Lists all armies with summary stats — mini count, total pieces, total points.
// ---------------------------------------------------------------------------
router.get('/', async (_req, res, next) => {
  try {
    const armies = await db.armies.findMany({
      orderBy: { created_at: 'desc' },
      include: {
        army_miniatures: {
          include: { miniatures: { select: { point_cost: true } } },
        },
      },
    });

    res.json(armies.map((a) => ({
      id:             a.id,
      name:           a.name,
      description:    a.description,
      created_at:     a.created_at,
      mini_count:     a.army_miniatures.length,
      total_quantity: a.army_miniatures.reduce((s, r) => s + r.quantity, 0),
      total_points:   totalPoints(a.army_miniatures),
    })));
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// POST /api/armies
// Creates a new empty army.
// Body: { name: string, description?: string }
// ---------------------------------------------------------------------------
router.post('/', async (req, res, next) => {
  try {
    const { name, description } = req.body as { name: string; description?: string };
    if (!name?.trim()) {
      res.status(400).json({ error: 'name is required' });
      return;
    }

    const army = await db.armies.create({ data: { name: name.trim(), description: description ?? null } });
    res.status(201).json({ id: army.id, name: army.name, description: army.description,
      created_at: army.created_at, mini_count: 0, total_quantity: 0, total_points: 0 });
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// GET /api/armies/:id
// Returns full army detail including miniatures with click dials.
// ---------------------------------------------------------------------------
router.get('/:id', async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    if (isNaN(id)) { res.status(400).json({ error: 'Invalid army id' }); return; }

    const army = await db.armies.findUnique({
      where: { id },
      include: { army_miniatures: { include: ARMY_MINI_INCLUDE } },
    });
    if (!army) { res.status(404).json({ error: 'Army not found' }); return; }

    res.json({
      id:          army.id,
      name:        army.name,
      description: army.description,
      created_at:  army.created_at,
      total_points: totalPoints(army.army_miniatures),
      miniatures: army.army_miniatures.map((r) => ({
        quantity:  r.quantity,
        miniature: formatMiniature(r.miniatures as Parameters<typeof formatMiniature>[0]),
      })),
    });
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// PUT /api/armies/:id
// Updates army name and/or description.
// Body: { name?: string, description?: string }
// ---------------------------------------------------------------------------
router.put('/:id', async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    if (isNaN(id)) { res.status(400).json({ error: 'Invalid army id' }); return; }

    const { name, description } = req.body as { name?: string; description?: string };
    const data: { name?: string; description?: string | null } = {};
    if (name !== undefined)        data.name        = name.trim();
    if (description !== undefined) data.description = description || null;

    if (!data.name && data.description === undefined) {
      res.status(400).json({ error: 'Nothing to update' });
      return;
    }
    if (data.name !== undefined && !data.name) {
      res.status(400).json({ error: 'name cannot be empty' });
      return;
    }

    const army = await db.armies.update({ where: { id }, data });
    res.json({ id: army.id, name: army.name, description: army.description });
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// DELETE /api/armies/:id
// Deletes the army and all its miniature rows. The schema has onDelete: NoAction
// on army_miniatures so we delete the child rows first.
// ---------------------------------------------------------------------------
router.delete('/:id', async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    if (isNaN(id)) { res.status(400).json({ error: 'Invalid army id' }); return; }

    await db.$transaction([
      db.army_miniatures.deleteMany({ where: { army_id: id } }),
      db.armies.delete({ where: { id } }),
    ]);
    res.status(204).send();
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// POST /api/armies/:id/miniatures
// Adds a mini to the army. Idempotent — increments quantity if already present.
// Body: { miniature_id: number, quantity?: number }
// ---------------------------------------------------------------------------
router.post('/:id/miniatures', async (req, res, next) => {
  try {
    const army_id = Number(req.params.id);
    if (isNaN(army_id)) { res.status(400).json({ error: 'Invalid army id' }); return; }

    const { miniature_id, quantity = 1 } = req.body as { miniature_id: number; quantity?: number };
    if (!miniature_id) { res.status(400).json({ error: 'miniature_id is required' }); return; }

    const existing = await db.army_miniatures.findFirst({ where: { army_id, miniature_id } });

    const row = existing
      ? await db.army_miniatures.update({
          where: { id: existing.id },
          data:  { quantity: existing.quantity + quantity },
          include: ARMY_MINI_INCLUDE,
        })
      : await db.army_miniatures.create({
          data:    { army_id, miniature_id, quantity },
          include: ARMY_MINI_INCLUDE,
        });

    res.status(existing ? 200 : 201).json({
      quantity:  row.quantity,
      miniature: formatMiniature(row.miniatures as Parameters<typeof formatMiniature>[0]),
    });
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// PUT /api/armies/:id/miniatures/:miniatureId
// Sets the quantity of a specific mini in the army.
// Body: { quantity: number } — must be >= 1
// ---------------------------------------------------------------------------
router.put('/:id/miniatures/:miniatureId', async (req, res, next) => {
  try {
    const army_id      = Number(req.params.id);
    const miniature_id = Number(req.params.miniatureId);
    const { quantity } = req.body as { quantity: number };

    if (isNaN(army_id) || isNaN(miniature_id)) {
      res.status(400).json({ error: 'Invalid id' }); return;
    }
    if (typeof quantity !== 'number' || quantity < 1) {
      res.status(400).json({ error: 'quantity must be >= 1' }); return;
    }

    const existing = await db.army_miniatures.findFirst({ where: { army_id, miniature_id } });
    if (!existing) { res.status(404).json({ error: 'Mini not in army' }); return; }

    const row = await db.army_miniatures.update({
      where: { id: existing.id },
      data:  { quantity },
      include: ARMY_MINI_INCLUDE,
    });

    res.json({
      quantity:  row.quantity,
      miniature: formatMiniature(row.miniatures as Parameters<typeof formatMiniature>[0]),
    });
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// DELETE /api/armies/:id/miniatures/:miniatureId
// Removes a mini from the army entirely.
// ---------------------------------------------------------------------------
router.delete('/:id/miniatures/:miniatureId', async (req, res, next) => {
  try {
    const army_id      = Number(req.params.id);
    const miniature_id = Number(req.params.miniatureId);

    if (isNaN(army_id) || isNaN(miniature_id)) {
      res.status(400).json({ error: 'Invalid id' }); return;
    }

    const existing = await db.army_miniatures.findFirst({ where: { army_id, miniature_id } });
    if (!existing) { res.status(404).json({ error: 'Mini not in army' }); return; }

    await db.army_miniatures.delete({ where: { id: existing.id } });
    res.status(204).send();
  } catch (err) {
    next(err);
  }
});

export default router;
