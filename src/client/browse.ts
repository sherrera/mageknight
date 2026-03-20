/**
 * Browse page — loads miniatures from the API, re-fetches on filter changes.
 *
 * Filter state is managed by the shared FilterPanel component. This file
 * owns only browse-specific concerns: the API fetch, sort controls, the
 * collection ownership state, and the "add to collection" action.
 */

import { renderCard, type Miniature } from './components/mini-card';
import {
  createFilterPanel,
  defaultState,
  type FilterState,
  type FilterOptions,
} from './components/filter-panel';

// ---------------------------------------------------------------------------
// Collection state — loaded once so owned indicators render on first paint
// ---------------------------------------------------------------------------

const ownedMap = new Map<number, number>();

async function loadCollectionState(): Promise<void> {
  try {
    const res = await fetch('/api/collection');
    if (!res.ok) return;
    const items: Array<{ quantity: number; miniature: { id: number } }> = await res.json();
    items.forEach((i) => ownedMap.set(i.miniature.id, i.quantity));
  } catch {
    // Non-fatal — browse works without collection state
  }
}

async function addToCollection(miniatureId: number): Promise<void> {
  const res = await fetch('/api/collection', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ miniature_id: miniatureId }),
  });
  if (!res.ok) throw new Error('Failed to add to collection');
  const item: { quantity: number } = await res.json();
  ownedMap.set(miniatureId, item.quantity);
}

// ---------------------------------------------------------------------------
// Sort state — browse-specific, not part of the shared filter panel
// ---------------------------------------------------------------------------

let sortBy    = 'name';
let sortOrder: 'asc' | 'desc' = 'asc';

function setSortOrder(order: 'asc' | 'desc'): void {
  sortOrder = order;
  document.getElementById('btn-sort-asc')!.setAttribute('variant', order === 'asc' ? 'primary' : 'default');
  document.getElementById('btn-sort-desc')!.setAttribute('variant', order === 'desc' ? 'primary' : 'default');
}

// ---------------------------------------------------------------------------
// API
// ---------------------------------------------------------------------------

async function fetchFilters(): Promise<FilterOptions> {
  const res = await fetch('/api/minis/filters');
  if (!res.ok) throw new Error('Failed to load filters');
  return res.json();
}

async function fetchMinis(state: FilterState): Promise<Miniature[]> {
  const params = new URLSearchParams();

  if (state.name)      params.set('name',        state.name);
  if (state.minCost)   params.set('min_cost',     state.minCost);
  if (state.maxCost)   params.set('max_cost',     state.maxCost);
  if (state.minSpeed)  params.set('min_speed',    state.minSpeed);
  if (state.minAttack) params.set('min_attack',   state.minAttack);
  if (state.minDefense)params.set('min_defense',  state.minDefense);
  if (state.minDamage) params.set('min_damage',   state.minDamage);
  if (state.minRange)  params.set('min_range',    state.minRange);
  if (state.maxRange)  params.set('max_range',    state.maxRange);
  if (state.minClicks) params.set('min_clicks',   state.minClicks);

  state.factions.forEach((f) => params.append('faction',       f));
  state.ranks.forEach((r)    => params.append('rank',          r));
  state.abilities.forEach((a)=> params.append('ability',       a));
  state.rangeTargets.forEach((t) => params.append('range_targets', t));

  params.set('sort_by',    sortBy);
  params.set('sort_order', sortOrder);

  const res = await fetch(`/api/minis?${params}`);
  if (!res.ok) throw new Error('Failed to load miniatures');
  return res.json();
}

// ---------------------------------------------------------------------------
// Rendering
// ---------------------------------------------------------------------------

let publicMode = false;

function browseActions(mini: Miniature): string {
  if (publicMode) return '';
  const qty = ownedMap.get(mini.id);
  if (qty) {
    return `
      <span class="owned-badge">✓ Owned ×${qty}</span>
      <sl-icon-button name="plus-circle" label="Add another" data-action="add" data-id="${mini.id}" style="margin-left:auto"></sl-icon-button>`;
  }
  return `
    <sl-button size="small" variant="primary" outline data-action="add" data-id="${mini.id}" style="width:100%">
      Add to collection
    </sl-button>`;
}

let currentMinis: Miniature[] = [];

function renderGrid(minis: Miniature[]): void {
  currentMinis = minis;
  const grid  = document.getElementById('cards-grid')!;
  const count = document.getElementById('results-count')!;

  if (minis.length === 0) {
    grid.innerHTML = '<p class="state-message">No miniatures match the current filters.</p>';
    count.textContent = '0 miniatures';
    return;
  }
  grid.innerHTML = minis.map((m) => renderCard(m, { actions: browseActions(m) })).join('');
  const n = minis.length;
  count.textContent = `${n} miniature${n === 1 ? '' : 's'}`;
}

// ---------------------------------------------------------------------------
// Dark mode
// ---------------------------------------------------------------------------

function applyTheme(dark: boolean): void {
  document.documentElement.classList.toggle('sl-theme-dark', dark);
  const btn = document.getElementById('btn-dark-mode') as HTMLElement & { name: string };
  btn.name = dark ? 'sun' : 'moon';
  localStorage.setItem('theme', dark ? 'dark' : 'light');
}

function applyStatTiers(on: boolean): void {
  document.documentElement.classList.toggle('stat-tiers', on);
  const btn = document.getElementById('btn-stat-tiers') as HTMLElement & { name: string };
  btn.name = on ? 'palette' : 'palette2';
  localStorage.setItem('statTiers', on ? '1' : '0');
}

// ---------------------------------------------------------------------------
// Boot
// ---------------------------------------------------------------------------

async function init(): Promise<void> {
  applyTheme(localStorage.getItem('theme') === 'dark');
  applyStatTiers(localStorage.getItem('statTiers') === '1');

  const config = await fetch('/api/config').then((r) => r.json()).catch(() => ({}));
  publicMode = config.publicMode === true;
  if (publicMode) {
    document.querySelectorAll<HTMLElement>('[data-public-hide]').forEach((el) => el.remove());
  }

  document.getElementById('btn-dark-mode')!.addEventListener('click', () => {
    applyTheme(!document.documentElement.classList.contains('sl-theme-dark'));
  });
  document.getElementById('btn-stat-tiers')!.addEventListener('click', () => {
    applyStatTiers(!document.documentElement.classList.contains('stat-tiers'));
  });
  document.getElementById('btn-filter-toggle')?.addEventListener('click', () => {
    document.getElementById('filter-container')!.classList.toggle('is-open');
  });

  // Sort controls
  document.getElementById('btn-sort-asc')!.addEventListener('click', () => { setSortOrder('asc'); refresh(); });
  document.getElementById('btn-sort-desc')!.addEventListener('click', () => { setSortOrder('desc'); refresh(); });

  const sortByEl = document.getElementById('filter-sort-by') as HTMLElement & { value: string };
  sortByEl.addEventListener('sl-change', () => { sortBy = sortByEl.value; refresh(); });

  // Add-to-collection via event delegation on the grid
  document.getElementById('cards-grid')!.addEventListener('click', async (e: Event) => {
    const btn = (e.target as HTMLElement).closest('[data-action="add"]') as HTMLElement | null;
    if (!btn) return;
    const id = Number(btn.dataset.id);
    try {
      await addToCollection(id);
      const mini = currentMinis.find((m) => m.id === id);
      const card = document.querySelector<HTMLElement>(`.mini-card[data-id="${id}"]`);
      if (card && mini) card.outerHTML = renderCard(mini, { actions: browseActions(mini) });
    } catch (err) {
      console.error(err);
    }
  });

  // Load filter options and mount the shared panel
  const filterOptions = await fetchFilters().catch(() => ({
    factions: [], ranks: [], abilities: [], rangeTargets: [],
  }));

  let filterState: FilterState = defaultState();
  createFilterPanel(
    document.getElementById('filter-container')!,
    filterOptions,
    (state) => { filterState = state; refresh(); },
  );

  async function refresh(): Promise<void> {
    document.getElementById('cards-grid')!.innerHTML = '<p class="state-message">Loading…</p>';
    document.getElementById('results-count')!.textContent = '…';
    try {
      renderGrid(await fetchMinis(filterState));
    } catch (err) {
      document.getElementById('cards-grid')!.innerHTML = '<p class="state-message">Error loading miniatures.</p>';
      console.error(err);
    }
  }

  await loadCollectionState();
  await refresh();
}

init().catch(console.error);
