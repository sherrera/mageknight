/**
 * Mini card component — shared across Browse, Collection, and Army Builder.
 *
 * The base card renders the image, identity info, and click dial. Each page
 * can inject page-specific controls (quantity badges, action buttons) via the
 * `actions` option so the core card never needs to know which page it's on.
 */

// ---------------------------------------------------------------------------
// Types — re-exported so other modules can import them from here rather than
// duplicating the definitions across pages.
// ---------------------------------------------------------------------------

export interface Ability {
  name: string;
  color: string | null;
}

export interface Click {
  click_number: number | null;
  speed: number | null;
  attack: number | null;
  defense: number | null;
  damage: number | null;
  speed_ability: Ability | null;
  attack_ability: Ability | null;
  defense_ability: Ability | null;
  damage_ability: Ability | null;
}

export interface Miniature {
  id: number;
  name: string | null;
  set_name: string | null;
  set_display_name: string | null;
  rank: string | null;
  point_cost: number | null;
  collector_number: number | null;
  frq: number | null;
  arc: number | null;
  range: number | null;
  range_targets: number | null;
  image_url: string | null;
  factions: string[];
  clicks: Click[];
  peak_score: number | null;
  sustained_score: number | null;
  overall_score: number | null;
}

export interface CardOptions {
  /** HTML string injected into the card footer. Use for action buttons,
   *  quantity controls, etc. Nothing is rendered if omitted. */
  actions?: string;
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

/**
 * A click is "dead" when all four stats are zero — the mini is KO'd.
 * The scraper sometimes records multiple trailing dead clicks; we collapse
 * them all into one skull marker so the dial doesn't show redundant rows.
 */
function isDead(c: Click): boolean {
  return c.speed === 0 && c.attack === 0 && c.defense === 0 && c.damage === 0;
}

// ---------------------------------------------------------------------------
// Stat value maps — mirrors src/server/lib/scores.ts STAT_MAPS.
// Used client-side for driver chip and stat tier colouring.
// ---------------------------------------------------------------------------

const STAT_MAPS_CLIENT: Record<string, Record<number, number>> = {
  speed:   { 0:0, 1:6, 2:11, 3:17, 4:22, 5:28, 6:33, 7:39, 8:44, 9:50, 10:56, 11:61, 12:67, 13:72, 14:78, 15:83, 16:89, 17:94, 18:100 },
  attack:  { 0:3, 1:3, 2:3, 3:8, 4:17, 5:28, 6:42, 7:58, 8:72, 9:83, 10:92, 11:97, 12:97, 13:97, 14:97, 15:97 },
  defense: { 0:3, 1:3, 2:3, 3:3, 4:3, 5:3, 6:3, 7:3, 8:3, 9:3, 10:3, 11:8, 12:17, 13:28, 14:42, 15:58, 16:72, 17:83, 18:92, 19:97, 20:97 },
  damage:  { 0:0, 1:15, 2:35, 3:70, 4:90, 5:100, 6:105, 7:108, 8:110 },
};


/** Returns a CSS class for stat-value spans — 3 green tiers (g1/g2/g3) and 3 red tiers (r1/r2/r3). */
function statTierClass(stat: 'speed' | 'attack' | 'defense' | 'damage', val: number | null): string {
  if (val == null) return '';
  switch (stat) {
    case 'attack':
      if (val >= 11) return 'stat--g3';
      if (val >= 9)  return 'stat--g2';
      if (val >= 8)  return 'stat--g1';
      if (val <= 3)  return 'stat--r3';
      if (val <= 4)  return 'stat--r2';
      if (val <= 5)  return 'stat--r1';
      return '';
    case 'defense':
      if (val >= 19) return 'stat--g3';
      if (val >= 17) return 'stat--g2';
      if (val >= 16) return 'stat--g1';
      if (val <= 10) return 'stat--r3';
      if (val <= 11) return 'stat--r2';
      if (val <= 13) return 'stat--r1';
      return '';
    case 'damage':
      if (val >= 5)  return 'stat--g3';
      if (val >= 4)  return 'stat--g2';
      if (val >= 3)  return 'stat--g1';
      if (val <= 0)  return 'stat--r3';
      if (val <= 1)  return 'stat--r2';
      return '';
    case 'speed':
      if (val >= 12) return 'stat--g3';
      if (val >= 10) return 'stat--g2';
      if (val >= 8)  return 'stat--g1';
      if (val <= 2)  return 'stat--r3';
      if (val <= 4)  return 'stat--r2';
      if (val <= 6)  return 'stat--r1';
      return '';
    default: return '';
  }
}


function abilityChip(ability: Ability | null): string {
  if (!ability) return '';
  const bg = ability.color ?? '#6b7280';
  return `<span class="ability-chip" style="background-color:${bg}" title="${ability.name}">${ability.name}</span>`;
}

/** Returns a CSS class suffix that drives the rank's accent colour. */
export function rankClass(rank: string | null): string {
  switch (rank?.toUpperCase()) {
    case 'UNIQUE':   return 'unique';
    case 'TOUGH':    return 'tough';
    case 'STANDARD': return 'standard';
    case 'PROMO':    return 'promo';
    default:         return 'weak';
  }
}

// ---------------------------------------------------------------------------
// Dial
// ---------------------------------------------------------------------------

function renderDial(clicks: Click[]): string {
  if (clicks.length === 0) return '';

  // Every click is rendered, including dead ones. Dead clicks show 💀 in each
  // stat cell (matching how the physical dial looks — a skull symbol per stat
  // when the mini is KO'd). This keeps all cards the same height.
  const rows = clicks.map((c) => {
    if (isDead(c)) {
      return `
    <tr class="dial-row--dead">
      <td class="dial-click-num">${c.click_number ?? ''}</td>
      <td><div class="stat-cell"><span class="dial-skull">💀</span></div></td>
      <td><div class="stat-cell"><span class="dial-skull">💀</span></div></td>
      <td><div class="stat-cell"><span class="dial-skull">💀</span></div></td>
      <td><div class="stat-cell"><span class="dial-skull">💀</span></div></td>
    </tr>`;
    }
    return `
    <tr>
      <td class="dial-click-num">${c.click_number ?? ''}</td>
      <td><div class="stat-cell ${statTierClass('speed',   c.speed)}"><span class="stat-value">${c.speed ?? '—'}</span>${abilityChip(c.speed_ability)}</div></td>
      <td><div class="stat-cell ${statTierClass('attack',  c.attack)}"><span class="stat-value">${c.attack ?? '—'}</span>${abilityChip(c.attack_ability)}</div></td>
      <td><div class="stat-cell ${statTierClass('defense', c.defense)}"><span class="stat-value">${c.defense ?? '—'}</span>${abilityChip(c.defense_ability)}</div></td>
      <td><div class="stat-cell ${statTierClass('damage',  c.damage)}"><span class="stat-value">${c.damage ?? '—'}</span>${abilityChip(c.damage_ability)}</div></td>
    </tr>`;
  }).join('');

  return `
    <div class="mini-card__dial">
      <table class="dial-table">
        <thead>
          <tr>
            <th class="dial-click-num">#</th>
            <th>SPD</th><th>ATK</th><th>DEF</th><th>DMG</th>
          </tr>
        </thead>
        <tbody>${rows}</tbody>
      </table>
    </div>`;
}

// ---------------------------------------------------------------------------
// Score badges
// ---------------------------------------------------------------------------

function scoreBadge(label: string, value: number | null, cssClass: string): string {
  if (value == null) return '';
  return `<span class="score-badge ${cssClass}" title="${label} score">${label} <strong>${value}</strong></span>`;
}

function renderScores(mini: Miniature): string {
  if (mini.peak_score == null && mini.sustained_score == null && mini.overall_score == null) return '';
  return `
    <div class="mini-card__scores">
      ${scoreBadge('Peak',      mini.peak_score,      'score-badge--peak')}
      ${scoreBadge('Sustained', mini.sustained_score, 'score-badge--sustained')}
      ${scoreBadge('Overall',   mini.overall_score,   'score-badge--overall')}
    </div>`;
}

// ---------------------------------------------------------------------------
// Card
// ---------------------------------------------------------------------------

export function renderCard(mini: Miniature, options: CardOptions = {}): string {
  const img       = mini.image_url ?? '/images/No_Image_Available.jpg';
  const name      = mini.name ?? 'Unknown';
  const rank      = mini.rank?.toUpperCase() ?? '?';
  const setLabel  = [mini.set_display_name ?? mini.set_name, mini.collector_number != null ? `#${mini.collector_number}` : null]
    .filter(Boolean).join(' ');

  const factionTags = mini.factions
    .map((f) => `<span class="faction-tag">${f}</span>`)
    .join('');

  const rangeInfo = mini.range
    ? `<span class="meta-detail">⬟ range ${mini.range}${mini.range_targets && mini.range_targets > 1 ? ` ×${mini.range_targets}` : ''}</span>`
    : '<span class="meta-detail meta-detail--muted">melee</span>';

  const arcInfo = mini.arc != null
    ? `<span class="meta-detail">arc ${mini.arc}°</span>`
    : '';

  const buyUrl = `https://www.nobleknight.com/Search-Results?zQuery=${encodeURIComponent(name + ' mage knight')}`;
  const buyBtn = `<a class="mini-card__buy-btn" href="${buyUrl}" target="_blank" rel="noopener noreferrer" title="Search on Noble Knight">$</a>`;

  const actionsHtml = (options.actions || buyBtn)
    ? `<div class="mini-card__actions">${options.actions ?? ''}${buyBtn}</div>`
    : '';

  return `
    <div class="mini-card rank--${rankClass(mini.rank)}" data-id="${mini.id}">
      <div class="mini-card__image-wrap">
        <img class="mini-card__image" src="${img}" alt="${name}" loading="lazy" />
        <span class="mini-card__rank-pill rank--${rankClass(mini.rank)}">${rank}</span>
      </div>

      <div class="mini-card__body">
        <div class="mini-card__title-row">
          <h3 class="mini-card__name" title="${name}">${name}</h3>
          <div class="mini-card__cost">
            <span class="cost-value">${mini.point_cost ?? '?'}</span>
            <span class="cost-label">pts</span>
          </div>
        </div>

        <div class="mini-card__meta">
          <span class="meta-detail meta-detail--muted">${setLabel}</span>
          ${arcInfo}
          ${rangeInfo}
        </div>

        ${mini.factions.length > 0 ? `<div class="mini-card__factions">${factionTags}</div>` : ''}
        ${renderScores(mini)}
      </div>

      ${renderDial(mini.clicks)}
      ${actionsHtml}
    </div>`;
}
