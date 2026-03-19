/**
 * Scoring engine — computes three per-miniature scores and writes them to the DB.
 *
 * PEAK SCORE (0–100)
 *   How efficient is this mini's opening click compared to similarly-priced minis?
 *   Raw stat sum on click 1 ÷ point_cost → percentile within cost bracket.
 *   Ability bonus from click 1 abilities applied after percentile.
 *   Raw stats used (not weighted) because we're asking a relative question:
 *   "is this click better than its peers?" not "how strong is it absolutely?"
 *
 * SUSTAINED SCORE (0–100)
 *   Same as peak but using the average raw stat sum across all live clicks.
 *   Tells you whether the mini stays useful after click 1 or burns out quickly.
 *   Wide gap between peak and sustained = single-use/disposable profile.
 *
 * OVERALL SCORE (0–100)
 *   Cross-bracket. Uses the exponential stat value maps (same as the old system)
 *   because here we're asking an absolute question: how strong is this click?
 *   Attack 10 is categorically different from attack 7 in game terms; the
 *   exponential scale captures that. Abilities also included in the numerator.
 *   Efficiency = weighted_value / (point_cost + DAMPING) → global percentile.
 *   DAMPING prevents a 5-pt mini from dominating by having great stats/cost ratio.
 *
 * Ability categories are stored in the abilities.weight_category column so the
 * user can adjust them via the UI without rewriting code. A seed pass sets
 * initial categories if they are still null.
 */

import db from '../db';

// ---------------------------------------------------------------------------
// Constants
// ---------------------------------------------------------------------------

const DAMPING = 15; // Added to point_cost denominator for overall score

const COST_BRACKETS = [
  { label: '0-9',     min: 0,   max: 9   },
  { label: '10-19',   min: 10,  max: 19  },
  { label: '20-29',   min: 20,  max: 29  },
  { label: '30-39',   min: 30,  max: 39  },
  { label: '40-49',   min: 40,  max: 49  },
  { label: '50-74',   min: 50,  max: 74  },
  { label: '75-99',   min: 75,  max: 99  },
  { label: '100-124', min: 100, max: 124 },
  { label: '125-149', min: 125, max: 149 },
  { label: '150+',    min: 150, max: Infinity },
];

// Stat value maps grounded in actual 2d6 hit probability.
//
// Attack: P(hit) vs the median defender (DEF=14, from DB median).
//   P(hit | ATK) = P(2d6 ≥ 14 − ATK), clamped to [3%, 97%] by critical-miss/hit rules.
//   Values are probability × 100, rounded to nearest integer.
//
// Defense: P(survive) vs the median attacker (ATK=7, from DB median).
//   P(survive | DEF) = 1 − P(2d6 ≥ DEF − 7), same clamps.
//   DEF ≤ 10 all map to ~3% because ATK 7 hits them on almost any roll.
//
// Speed: linear — movement has no diminishing returns.
//   Normalized so speed 18 (theoretical max) = 100.
//
// Damage: nonlinear — higher damage penetrates Toughness (−1) and
//   Invulnerability (−2 AND +2 DEF vs ranged). DMG 3 is the breakpoint that
//   can deal 1 click through Invulnerability; DMG 2+critical_hit achieves the same.
//
// Overall score uses the SUM of these values across ALL live clicks so that
// durable minis score higher than glass cannons with the same per-click stats.
const STAT_MAPS: Record<string, Record<number, number>> = {
  speed: {
    0:0,  1:6,  2:11, 3:17, 4:22, 5:28, 6:33, 7:39, 8:44,  9:50,
    10:56,11:61,12:67,13:72,14:78,15:83,16:89,17:94,18:100
  },
  attack: {
    // ATK 0-2: only auto-hit on 12 reaches DEF 14 → ~3%
    // ATK 7: P(2d6≥7)=21/36≈58%  (median attacker)
    // ATK 11+: capped at ~97% by auto-miss on roll 2
    0:3,  1:3,  2:3,  3:8,  4:17, 5:28, 6:42, 7:58, 8:72,  9:83,
    10:92,11:97,12:97,13:97,14:97,15:97
  },
  defense: {
    // DEF 0-10: ATK 7 hits on 3+ (97.2%) → survival ~3%
    // DEF 14: P(survive)=1−P(2d6≥7)=1−58%≈42%  (median defender)
    // DEF 19+: capped at ~97% survival (only auto-hit on roll 12 can hit)
    0:3,  1:3,  2:3,  3:3,  4:3,  5:3,  6:3,  7:3,  8:3,  9:3,
    10:3, 11:8, 12:17,13:28,14:42,15:58,16:72,17:83,18:92,19:97,20:97
  },
  damage: {
    // 0: useless. 1: often negated by Toughness (−1) → 0 effective.
    // 2: negated by Invulnerability (−2) → 0; reduced to 1 by Toughness.
    // 3: first value that deals 1 click through Invulnerability; 2 through Toughness.
    // 4+: strong — kills most minis in 1-2 hits even through defenses.
    0:0,  1:15, 2:35, 3:70, 4:90, 5:100,6:105,7:108,8:110
  },
};

// How much each ability category adjusts the bracket-percentile scores (peak/sustained).
// Small enough not to overwhelm the stat comparison; large enough to matter.
const BRACKET_ABILITY_ADJ: Record<string, number> = {
  high: 6, medium: 3, low: 1, neutral: 0, negative: -8,
};

// Ability bonus added to the NUMERATOR of the overall efficiency formula.
// Calibrated against the new stat-sum scale (a typical 4-click mini sums ~600–800).
// Applied once per mini (union of all abilities across all live clicks).
const OVERALL_ABILITY_BONUS: Record<string, number> = {
  high: 80, medium: 40, low: 12, neutral: 0, negative: -50,
};

// Initial ability categories seeded on first run. User can override via the UI.
// Marked with why each category was assigned so future adjusters have context.
const INITIAL_CATEGORIES: Record<string, string> = {
  // HIGH — large unconditional game impact
  'BOUND':           'high',   // effectively doubles movement range
  'FLIGHT':          'high',   // bypasses terrain entirely
  'INVULNERABILITY': 'high',   // −2 damage from all attacks AND +2 DEF vs ranged
  'QUICKNESS':       'high',   // full action + move again — huge action economy
  'DODGE':           'high',   // 50% to avoid damage
  'NECROMANCY':      'high',   // resurrects killed minis at full health
  'MAGIC BLAST':     'high',   // ranged attack ignoring many restrictions
  // MEDIUM — meaningful but conditional or partial
  'CHARGE':          'medium', // move-through + attack bonus vs adjacent
  'TOUGHNESS':       'medium', // reduce all incoming damage by 1
  'PIERCE':          'medium', // ignores defense — strong vs high-DEF targets
  'REGENERATION':    'medium', // heals 1 damage per turn
  'VAMPIRISM':       'medium', // heals when dealing damage
  'MAGIC HEALING':   'medium', // heal friendly at range
  'MAGIC CONFUSION': 'medium', // prevent enemy acting
  'MAGIC FREEZE':    'medium', // stop enemy movement
  'SNEAK ATTACK':    'medium', // bonus damage from rear
  'VENOM':           'medium', // ongoing damage after hit
  'SWEEP':           'medium', // hits multiple adjacent enemies
  'MAGIC IMMUNITY':  'medium', // immune to magic abilities
  'FLAME/LIGHTNING': 'medium', // elemental ranged attack
  // LOW — minor, very situational, or narrow benefit
  'LIMITED INVISIBILITY': 'low', // ranged only
  'BATTLE ARMOR':    'low',    // defense bonus vs ranged only
  'STEALTH':         'low',    // can't be targeted from >6"
  'WEAPON MASTER':   'low',    // reroll attack once
  'MAGIC ENHANCEMENT': 'low',  // boost friendly magic attack
  'SHOCKWAVE':       'low',    // push adjacent enemies back
  'POLE ARM':        'low',    // bonus vs large/cavalry — niche
  'FORCE MARCH':     'low',    // run faster but can't attack
  'NIMBLE':          'low',    // bonus in difficult terrain
  'DEFEND':          'low',    // give defense bonus to adjacent ally
  'AQUATIC':         'low',    // free movement in water
  'COMMAND':         'low',    // buff adjacent allies
  'HEALING':         'low',    // heal adjacent ally — short range
  'MAGIC RETALIATION': 'low',  // counter magic attacks
  'RAM':             'low',    // bonus when charging large targets
  // NEGATIVE — clear downside
  'DEMORALIZED':     'negative', // -2 to attack rolls — major handicap
  'BERSERK':         'negative', // must attack nearest, loses control
  'BATTLE FURY':     'negative', // uncontrolled charge each turn
  'DEAD':            'negative', // KO marker
};

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

function bracketFor(pointCost: number): string {
  return COST_BRACKETS.find((b) => pointCost >= b.min && pointCost <= b.max)?.label ?? '150+';
}

function statMapValue(stat: string, value: number | null): number {
  if (value == null) return 0;
  const map = STAT_MAPS[stat];
  return map[value] ?? map[Math.min(value, Math.max(...Object.keys(map).map(Number)))] ?? 0;
}

function isDead(cs: { speed: number | null; attack: number | null; defense: number | null; damage: number | null }): boolean {
  return cs.speed === 0 && cs.attack === 0 && cs.defense === 0 && cs.damage === 0;
}

function rawSum(cs: { speed: number | null; attack: number | null; defense: number | null; damage: number | null }): number {
  return (cs.speed ?? 0) + (cs.attack ?? 0) + (cs.defense ?? 0) + (cs.damage ?? 0);
}

function weightedSum(cs: { speed: number | null; attack: number | null; defense: number | null; damage: number | null }): number {
  return statMapValue('speed', cs.speed) + statMapValue('attack', cs.attack) +
         statMapValue('defense', cs.defense) + statMapValue('damage', cs.damage);
}

/** Percentile rank using midpoint formula: (rank - 0.5) / n * 100.
 *  Gives the lowest value ~0 and the highest ~100, with even spread between. */
function percentileRank(allValues: number[], value: number): number {
  const sorted = [...allValues].sort((a, b) => a - b);
  const below  = sorted.filter((v) => v < value).length;
  const equal  = sorted.filter((v) => v === value).length;
  return ((below + equal / 2) / sorted.length) * 100;
}

function clamp(v: number): number {
  return Math.max(0, Math.min(100, v));
}

// ---------------------------------------------------------------------------
// Seed initial ability categories (only sets nulls, never overwrites)
// ---------------------------------------------------------------------------

async function seedAbilityCategories(): Promise<void> {
  const abilities = await db.abilities.findMany({ select: { id: true, name: true, weight_category: true } });
  for (const ability of abilities) {
    // Apply INITIAL_CATEGORIES when the ability is still at the DB default ('neutral' or null)
    // and the map has a more specific suggestion. User-set non-neutral values are left alone.
    const isDefault = ability.weight_category == null || ability.weight_category === 'neutral';
    const suggested = INITIAL_CATEGORIES[ability.name.toUpperCase()];
    if (isDefault && suggested != null) {
      await db.abilities.update({ where: { id: ability.id }, data: { weight_category: suggested } });
    }
  }
}

// ---------------------------------------------------------------------------
// Main computation
// ---------------------------------------------------------------------------

export async function computeScores(): Promise<{ updated: number }> {
  await seedAbilityCategories();

  // Load every mini with its click stats and ability categories
  const minis = await db.miniatures.findMany({
    select: {
      id:          true,
      point_cost:  true,
      click_stats: {
        orderBy: { click_number: 'asc' },
        select: {
          click_number: true,
          speed: true, attack: true, defense: true, damage: true,
          abilities_click_stats_speed_ability_idToabilities:   { select: { name: true, weight_category: true } },
          abilities_click_stats_attack_ability_idToabilities:  { select: { name: true, weight_category: true } },
          abilities_click_stats_defense_ability_idToabilities: { select: { name: true, weight_category: true } },
          abilities_click_stats_damage_ability_idToabilities:  { select: { name: true, weight_category: true } },
        },
      },
    },
  });

  // Helper to get ability category from a click's ability fields
  type ClickRaw = (typeof minis)[number]['click_stats'][number];
  function clickAbilityCategories(cs: ClickRaw): string[] {
    const seen = new Set<string>();
    for (const ab of [
      cs.abilities_click_stats_speed_ability_idToabilities,
      cs.abilities_click_stats_attack_ability_idToabilities,
      cs.abilities_click_stats_defense_ability_idToabilities,
      cs.abilities_click_stats_damage_ability_idToabilities,
    ]) {
      if (ab && !seen.has(ab.name)) {
        seen.add(ab.name);
      }
    }
    return Array.from(seen).map((name) => {
      const ab = [
        cs.abilities_click_stats_speed_ability_idToabilities,
        cs.abilities_click_stats_attack_ability_idToabilities,
        cs.abilities_click_stats_defense_ability_idToabilities,
        cs.abilities_click_stats_damage_ability_idToabilities,
      ].find((a) => a?.name === name);
      return ab?.weight_category ?? 'neutral';
    });
  }

  // Compute intermediate values for each mini
  type MiniCalc = {
    id: number;
    bracket: string;
    peakDensity: number;        // click-1 raw stat sum / point_cost
    sustainedDensity: number;   // avg live click raw stat sum / point_cost
    overallEfficiency: number;  // sum of weighted values across all live clicks + ability / (cost + DAMPING)
    peakAbilityAdj: number;
    sustainedAbilityAdj: number;
  };

  const calcs: MiniCalc[] = [];

  for (const mini of minis) {
    const cost = mini.point_cost;
    if (!cost || cost <= 0) continue; // can't score free/costed minis

    const liveClicks = mini.click_stats.filter((cs) => !isDead(cs));
    if (liveClicks.length === 0) continue;

    const click1 = liveClicks[0]; // sorted by click_number asc

    // Peak: click-1 raw stat density
    const peakDensity = rawSum(click1) / cost;

    // Sustained: average live-click raw stat density
    const avgRaw = liveClicks.reduce((s, cs) => s + rawSum(cs), 0) / liveClicks.length;
    const sustainedDensity = avgRaw / cost;

    // Overall: sum of weighted stats across ALL live clicks / (cost + DAMPING).
    // Summing across clicks penalizes glass cannons — a 1-click mini scores
    // much less than a 6-click mini with the same per-click stats.
    const totalWeightedValue = liveClicks.reduce((s, cs) => s + weightedSum(cs), 0);

    // Bracket ability adjustments
    const peakAbilityAdj = clickAbilityCategories(click1)
      .reduce((s, cat) => s + (BRACKET_ABILITY_ADJ[cat] ?? 0), 0);

    // Sustained: union of abilities across all live clicks (no double-counting)
    const allAbilityCategories = new Map<string, string>();
    for (const cs of liveClicks) {
      for (const ab of [
        cs.abilities_click_stats_speed_ability_idToabilities,
        cs.abilities_click_stats_attack_ability_idToabilities,
        cs.abilities_click_stats_defense_ability_idToabilities,
        cs.abilities_click_stats_damage_ability_idToabilities,
      ]) {
        if (ab && !allAbilityCategories.has(ab.name)) {
          allAbilityCategories.set(ab.name, ab.weight_category ?? 'neutral');
        }
      }
    }
    const sustainedAbilityAdj = Array.from(allAbilityCategories.values())
      .reduce((s, cat) => s + (BRACKET_ABILITY_ADJ[cat] ?? 0), 0);

    // Overall ability bonus: union of all abilities across all live clicks
    const overallAbilityBonus = Array.from(allAbilityCategories.values())
      .reduce((s, cat) => s + (OVERALL_ABILITY_BONUS[cat] ?? 0), 0);
    const overallEfficiency = (totalWeightedValue + overallAbilityBonus) / (cost + DAMPING);

    calcs.push({
      id:               mini.id,
      bracket:          bracketFor(cost),
      peakDensity,
      sustainedDensity,
      overallEfficiency,
      peakAbilityAdj,
      sustainedAbilityAdj,
    });
  }

  // Group by bracket for percentile computation
  const brackets = new Map<string, MiniCalc[]>();
  for (const c of calcs) {
    if (!brackets.has(c.bracket)) brackets.set(c.bracket, []);
    brackets.get(c.bracket)!.push(c);
  }

  // Global arrays for overall score percentile
  const allOverall = calcs.map((c) => c.overallEfficiency);

  // Write scores back to DB in a single transaction
  const updates = calcs.map((c) => {
    const bracketMinis  = brackets.get(c.bracket)!;
    const peakPcts      = bracketMinis.map((m) => m.peakDensity);
    const sustainedPcts = bracketMinis.map((m) => m.sustainedDensity);

    const peakScore      = clamp(percentileRank(peakPcts, c.peakDensity) + c.peakAbilityAdj);
    const sustainedScore = clamp(percentileRank(sustainedPcts, c.sustainedDensity) + c.sustainedAbilityAdj);
    const overallScore   = clamp(percentileRank(allOverall, c.overallEfficiency));

    return db.miniatures.update({
      where: { id: c.id },
      data: {
        peak_score:      Math.round(peakScore      * 10) / 10,
        sustained_score: Math.round(sustainedScore * 10) / 10,
        overall_score:   Math.round(overallScore   * 10) / 10,
      },
    });
  });

  await db.$transaction(updates);
  return { updated: updates.length };
}
