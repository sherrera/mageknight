/**
 * Shared miniature include shape and formatter used by every route that
 * returns miniature data (minis, collection, armies).
 *
 * Centralised here so the client-facing response shape stays consistent
 * regardless of which endpoint the data came from, and so changes only
 * need to happen in one place.
 */

import db from '../db';

// The include shape is defined once and exported so routes can pass it
// directly to Prisma — this ensures the formatter's expectations always
// match what the query actually returns.
export const MINIATURE_INCLUDE = {
  miniature_factions: { include: { factions: true } },
  click_stats: {
    orderBy: { click_number: 'asc' as const },
    include: {
      abilities_click_stats_speed_ability_idToabilities: true,
      abilities_click_stats_attack_ability_idToabilities: true,
      abilities_click_stats_defense_ability_idToabilities: true,
      abilities_click_stats_damage_ability_idToabilities: true,
    },
  },
} as const;

// Derive the type from the actual query so it stays in sync with the include shape.
type MiniatureRow = NonNullable<
  Awaited<ReturnType<typeof db.miniatures.findFirst>> & {
    miniature_factions: Array<{ factions: { id: number; name: string } }>;
    click_stats: Array<{
      id: number;
      click_number: number | null;
      speed: number | null;
      attack: number | null;
      defense: number | null;
      damage: number | null;
      abilities_click_stats_speed_ability_idToabilities:   { name: string; color: string | null } | null;
      abilities_click_stats_attack_ability_idToabilities:  { name: string; color: string | null } | null;
      abilities_click_stats_defense_ability_idToabilities: { name: string; color: string | null } | null;
      abilities_click_stats_damage_ability_idToabilities:  { name: string; color: string | null } | null;
    }>;
  }
>;

export function formatMiniature(m: MiniatureRow) {
  return {
    id: m.id,
    name: m.name,
    set_name: m.set_name,
    rank: m.rank,
    point_cost: m.point_cost,
    collector_number: m.collector_number,
    frq: m.frq,
    arc: m.arc,
    range: m.range,
    range_targets: m.range_targets,
    peak_score:      (m as { peak_score?: number | null }).peak_score      ?? null,
    sustained_score: (m as { sustained_score?: number | null }).sustained_score ?? null,
    overall_score:   (m as { overall_score?: number | null }).overall_score   ?? null,
    // Rewrite the legacy /static/images/ path to the web-optimised WebPs.
    image_url: m.image_url
      ? m.image_url.replace('/static/images/', '/images-webp/').replace(/\.(jpe?g|png)$/i, '.webp')
      : null,
    factions: m.miniature_factions.map((mf) => mf.factions.name),
    clicks: m.click_stats.map((cs) => ({
      click_number: cs.click_number,
      speed:   cs.speed,
      attack:  cs.attack,
      defense: cs.defense,
      damage:  cs.damage,
      speed_ability:   cs.abilities_click_stats_speed_ability_idToabilities   ? { name: cs.abilities_click_stats_speed_ability_idToabilities.name,   color: cs.abilities_click_stats_speed_ability_idToabilities.color }   : null,
      attack_ability:  cs.abilities_click_stats_attack_ability_idToabilities  ? { name: cs.abilities_click_stats_attack_ability_idToabilities.name,  color: cs.abilities_click_stats_attack_ability_idToabilities.color }  : null,
      defense_ability: cs.abilities_click_stats_defense_ability_idToabilities ? { name: cs.abilities_click_stats_defense_ability_idToabilities.name, color: cs.abilities_click_stats_defense_ability_idToabilities.color } : null,
      damage_ability:  cs.abilities_click_stats_damage_ability_idToabilities  ? { name: cs.abilities_click_stats_damage_ability_idToabilities.name,  color: cs.abilities_click_stats_damage_ability_idToabilities.color }  : null,
    })),
  };
}
