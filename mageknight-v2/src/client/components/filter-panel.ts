/**
 * Shared filter panel — used by both Browse and Collection pages.
 *
 * Renders a filter sidebar into a given container element, manages its own
 * state, and calls `onChange` whenever any filter changes. The caller decides
 * what to do with the new state (Browse hits the API; Collection filters
 * in-memory since its dataset is small).
 *
 * Sort controls are NOT included here — they're browse-specific and live in
 * browse.ts.
 */

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

export interface FilterState {
  name: string;
  factions: string[];
  ranks: string[];
  abilities: string[];   // AND semantics — mini must have all selected abilities
  sets: string[];        // DB keys (alpha, mkd, …) — OR semantics
  minCost: string;
  maxCost: string;
  minSpeed: string;
  minAttack: string;
  minDefense: string;
  minDamage: string;
  minRange: string;
  maxRange: string;
  rangeTargets: string[];
  minClicks: string;
}

export interface FilterOptions {
  factions: string[];
  ranks: string[];
  abilities: Array<{ name: string; color: string | null }>;
  rangeTargets: number[];
  sets: Array<{ key: string; name: string }>;
}

export interface FilterPanelController {
  getState(): FilterState;
  reset(): void;
}

export function defaultState(): FilterState {
  return {
    name: '',
    factions: [],
    ranks: [],
    abilities: [],
    sets: [],
    minCost: '',
    maxCost: '',
    minSpeed: '',
    minAttack: '',
    minDefense: '',
    minDamage: '',
    minRange: '',
    maxRange: '',
    rangeTargets: [],
    minClicks: '',
  };
}

// ---------------------------------------------------------------------------
// Client-side filter — used by Collection page to filter its in-memory data
// without a round-trip. Mirrors the server-side logic in minis.ts so both
// pages behave consistently.
// ---------------------------------------------------------------------------

export interface Filterable {
  name: string | null;
  rank: string | null;
  point_cost: number | null;
  range: number | null;
  range_targets: number | null;
  set_name: string | null;
  peak_score: number | null;
  sustained_score: number | null;
  overall_score: number | null;
  factions: string[];
  clicks: Array<{
    speed: number | null;
    attack: number | null;
    defense: number | null;
    damage: number | null;
    speed_ability: { name: string } | null;
    attack_ability: { name: string } | null;
    defense_ability: { name: string } | null;
    damage_ability: { name: string } | null;
  }>;
}

export function applyFilters<T extends Filterable>(items: T[], state: FilterState): T[] {
  return items.filter((m) => {
    if (state.name && !(m.name ?? '').toLowerCase().includes(state.name.toLowerCase())) return false;

    if (state.factions.length > 0 && !state.factions.some((f) => m.factions.includes(f))) return false;

    if (state.sets.length > 0 && !state.sets.includes(m.set_name ?? '')) return false;

    if (state.ranks.length > 0 && !state.ranks.some(
      (r) => (m.rank ?? '').toUpperCase() === r.toUpperCase(),
    )) return false;

    if (state.minCost && (m.point_cost ?? 0) < Number(state.minCost)) return false;
    if (state.maxCost && (m.point_cost ?? 0) > Number(state.maxCost)) return false;
    if (state.minRange && (m.range ?? 0) < Number(state.minRange)) return false;
    if (state.maxRange && (m.range ?? 0) > Number(state.maxRange)) return false;

    if (state.rangeTargets.length > 0 &&
      !state.rangeTargets.includes(String(m.range_targets))) return false;

    // Each selected ability must appear on at least one click (AND semantics)
    for (const abilityName of state.abilities) {
      const hasAbility = m.clicks.some(
        (c) =>
          c.speed_ability?.name === abilityName ||
          c.attack_ability?.name === abilityName ||
          c.defense_ability?.name === abilityName ||
          c.damage_ability?.name === abilityName,
      );
      if (!hasAbility) return false;
    }

    // Stat minimums: at least one click must meet each threshold independently
    const checks: [string, 'speed' | 'attack' | 'defense' | 'damage'][] = [
      [state.minSpeed, 'speed'], [state.minAttack, 'attack'],
      [state.minDefense, 'defense'], [state.minDamage, 'damage'],
    ];
    for (const [val, field] of checks) {
      if (val && !m.clicks.some((c) => (c[field] ?? 0) >= Number(val))) return false;
    }

    // min_clicks: count live (non-KO) clicks
    if (state.minClicks) {
      const live = m.clicks.filter(
        (c) => !(c.speed === 0 && c.attack === 0 && c.defense === 0 && c.damage === 0),
      ).length;
      if (live < Number(state.minClicks)) return false;
    }

    return true;
  });
}

export type SortField = 'name' | 'point_cost' | 'set_name' | 'rank' | 'overall_score' | 'peak_score' | 'sustained_score';

export function applySort<T extends Filterable>(items: T[], field: SortField, order: 'asc' | 'desc'): T[] {
  return [...items].sort((a, b) => {
    let cmp = 0;
    if (field === 'name' || field === 'set_name' || field === 'rank') {
      const av = (a[field] ?? '').toLowerCase();
      const bv = (b[field] ?? '').toLowerCase();
      cmp = av < bv ? -1 : av > bv ? 1 : 0;
    } else {
      // Numeric — nulls always last regardless of direction
      const av = a[field] as number | null;
      const bv = b[field] as number | null;
      if (av == null && bv == null) cmp = 0;
      else if (av == null) return 1;
      else if (bv == null) return -1;
      else cmp = av - bv;
    }
    return order === 'asc' ? cmp : -cmp;
  });
}

// ---------------------------------------------------------------------------
// Render + wire
// ---------------------------------------------------------------------------

export function createFilterPanel(
  container: Element,
  options: FilterOptions,
  onChange: (state: FilterState) => void,
): FilterPanelController {
  const state = defaultState();

  container.innerHTML = renderHTML(options);

  // Helpers to get Shoelace elements (cast to access .value)
  type SlEl = HTMLElement & { value: string };
  type SlMultiEl = HTMLElement & { value: string[] };

  const get  = (id: string) => container.querySelector<SlEl>(`#${id}`)!;
  const getM = (id: string) => container.querySelector<SlMultiEl>(`#${id}`)!;

  // Debounce for text/number inputs
  function debounce(fn: () => void, ms: number) {
    let t: ReturnType<typeof setTimeout>;
    return () => { clearTimeout(t); t = setTimeout(fn, ms); };
  }

  const notify = () => onChange({ ...state });
  const dNotify = debounce(notify, 300);

  // Text search
  get('fp-name').addEventListener('sl-input',  () => { state.name = get('fp-name').value; dNotify(); });
  get('fp-name').addEventListener('sl-clear',  () => { state.name = ''; notify(); });

  // Multi-selects — immediate.
  // Factions and abilities use numeric index values (see renderHTML); map back to names here.
  getM('fp-faction').addEventListener('sl-change',  () => { state.factions = getM('fp-faction').value.map((i) => options.factions[Number(i)]).filter(Boolean); notify(); });
  getM('fp-rank').addEventListener('sl-change',     () => { state.ranks = getM('fp-rank').value; notify(); });
  getM('fp-ability').addEventListener('sl-change',  () => { state.abilities = getM('fp-ability').value.map((i) => options.abilities[Number(i)]?.name).filter(Boolean) as string[]; notify(); });
  getM('fp-set').addEventListener('sl-change',      () => { state.sets = getM('fp-set').value.map((i) => options.sets[Number(i)]?.key).filter(Boolean) as string[]; notify(); });
  getM('fp-targets').addEventListener('sl-change',  () => { state.rangeTargets = getM('fp-targets').value; notify(); });

  // Number inputs — debounced
  const numFields: [string, keyof FilterState][] = [
    ['fp-min-cost',    'minCost'],
    ['fp-max-cost',    'maxCost'],
    ['fp-min-speed',   'minSpeed'],
    ['fp-min-attack',  'minAttack'],
    ['fp-min-defense', 'minDefense'],
    ['fp-min-damage',  'minDamage'],
    ['fp-min-range',   'minRange'],
    ['fp-max-range',   'maxRange'],
    ['fp-min-clicks',  'minClicks'],
  ];
  for (const [id, key] of numFields) {
    get(id).addEventListener('sl-input', () => {
      (state as Record<string, string>)[key] = get(id).value;
      dNotify();
    });
  }

  // Reset button
  container.querySelector('#fp-reset')?.addEventListener('click', () => {
    Object.assign(state, defaultState());
    applyStateToDOM();
    notify();
  });

  function applyStateToDOM() {
    (get('fp-name') as unknown as { value: string }).value = '';
    (getM('fp-faction') as unknown as { value: string[] }).value = [];
    (getM('fp-rank') as unknown as { value: string[] }).value = [];
    (getM('fp-ability') as unknown as { value: string[] }).value = [];
    (getM('fp-set') as unknown as { value: string[] }).value = [];
    (getM('fp-targets') as unknown as { value: string[] }).value = [];
    for (const [id] of numFields) {
      (get(id) as unknown as { value: string }).value = '';
    }
  }

  return {
    getState: () => ({ ...state }),
    reset: () => { Object.assign(state, defaultState()); applyStateToDOM(); notify(); },
  };
}

// ---------------------------------------------------------------------------
// HTML template
// ---------------------------------------------------------------------------

// Shoelace sl-select splits option values on spaces, so faction and ability
// names (e.g. "Atlantis Guild", "MAGIC BLAST") must not be used as raw values.
// We use the array index as the safe value and map back to names in handlers.
function renderHTML(options: FilterOptions): string {
  const factionOptions = options.factions
    .map((f, i) => `<sl-option value="${i}">${f}</sl-option>`).join('');

  const rankOptions = options.ranks
    .map((r) => `<sl-option value="${r}">${r}</sl-option>`).join('');

  const abilityOptions = options.abilities
    .map((a, i) => `
      <sl-option value="${i}">
        <span class="ability-swatch" style="background:${a.color ?? '#aaa'}"></span>${a.name}
      </sl-option>`).join('');

  // Sets use index values (like factions/abilities) because keys can contain
  // characters that Shoelace might handle inconsistently as option values.
  const setOptions = (options.sets ?? [])
    .map((s, i) => `<sl-option value="${i}">${s.name}</sl-option>`).join('');

  const targetOptions = options.rangeTargets
    .map((t) => `<sl-option value="${t}">${t} target${t > 1 ? 's' : ''}</sl-option>`).join('');

  return `
    <sl-input id="fp-name" placeholder="Search by name…" clearable size="small">
      <sl-icon slot="prefix" name="search"></sl-icon>
    </sl-input>

    <div>
      <p class="filters__section-label">Faction</p>
      <sl-select id="fp-faction" multiple clearable size="small" placeholder="All factions">
        ${factionOptions}
      </sl-select>
    </div>

    <div>
      <p class="filters__section-label">Rank</p>
      <sl-select id="fp-rank" multiple clearable size="small" placeholder="All ranks">
        ${rankOptions}
      </sl-select>
    </div>

    <div>
      <p class="filters__section-label">Set</p>
      <sl-select id="fp-set" multiple clearable size="small" placeholder="All sets">
        ${setOptions}
      </sl-select>
    </div>

    <div>
      <p class="filters__section-label">Abilities (must have all)</p>
      <sl-select id="fp-ability" multiple clearable size="small" placeholder="Any ability">
        ${abilityOptions}
      </sl-select>
    </div>

    <div>
      <p class="filters__section-label">Point cost</p>
      <div class="filters__row">
        <sl-input id="fp-min-cost" type="number" placeholder="Min" size="small" min="0"></sl-input>
        <sl-input id="fp-max-cost" type="number" placeholder="Max" size="small" min="0"></sl-input>
      </div>
    </div>

    <div>
      <p class="filters__section-label">Min stats (any click)</p>
      <div class="filters__stat-grid">
        <sl-input id="fp-min-speed"   type="number" placeholder="SPD" size="small" min="0"></sl-input>
        <sl-input id="fp-min-attack"  type="number" placeholder="ATK" size="small" min="0"></sl-input>
        <sl-input id="fp-min-defense" type="number" placeholder="DEF" size="small" min="0"></sl-input>
        <sl-input id="fp-min-damage"  type="number" placeholder="DMG" size="small" min="0"></sl-input>
      </div>
    </div>

    <div>
      <p class="filters__section-label">Range</p>
      <div class="filters__row">
        <sl-input id="fp-min-range" type="number" placeholder="Min" size="small" min="0"></sl-input>
        <sl-input id="fp-max-range" type="number" placeholder="Max" size="small" min="0"></sl-input>
      </div>
    </div>

    <div>
      <p class="filters__section-label">Range targets</p>
      <sl-select id="fp-targets" multiple clearable size="small" placeholder="Any">
        ${targetOptions}
      </sl-select>
    </div>

    <div>
      <p class="filters__section-label">Min live clicks</p>
      <sl-input id="fp-min-clicks" type="number" placeholder="e.g. 5" size="small" min="1"></sl-input>
    </div>

    <sl-button id="fp-reset" variant="default" size="small" outline style="width:100%">
      Reset filters
    </sl-button>`;
}
