/**
 * Army builder page — two-section layout:
 *   1. Compact army roster at the top — minis currently in the army with
 *      quantity controls and running point total.
 *   2. Filterable collection grid below — shows the user's owned minis so
 *      they can add them to the army. Filtering is client-side via the shared
 *      filter-panel component (same as the Collection page).
 *
 * The army id comes from the URL query string (?id=N). Missing or invalid id
 * redirects to the armies list.
 *
 * Name and description autosave on sl-change — no explicit save button needed.
 */

import { renderCard, rankClass, type Miniature } from './components/mini-card';
import {
  createFilterPanel,
  applyFilters,
  applySort,
  defaultState,
  type FilterState,
  type FilterOptions,
  type SortField,
} from './components/filter-panel';

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

interface ArmyMiniItem {
  quantity: number;
  miniature: Miniature;
}

interface ArmyDetail {
  id: number;
  name: string;
  description: string | null;
  total_points: number;
  miniatures: ArmyMiniItem[];
}

interface CollectionItem {
  quantity: number;
  miniature: Miniature;
}

// ---------------------------------------------------------------------------
// State
// ---------------------------------------------------------------------------

let armyId: number;
const armyMinis  = new Map<number, ArmyMiniItem>(); // minis in the army, keyed by miniature.id
let collection:  CollectionItem[] = [];             // user's full collection
let filterState: FilterState = defaultState();
let sortField: SortField = 'name';
let sortOrder: 'asc' | 'desc' = 'asc';

// ---------------------------------------------------------------------------
// API
// ---------------------------------------------------------------------------

async function fetchArmy(id: number): Promise<ArmyDetail> {
  const res = await fetch(`/api/armies/${id}`);
  if (!res.ok) throw new Error('Failed to load army');
  return res.json();
}

async function updateArmy(id: number, data: { name?: string; description?: string }): Promise<void> {
  const res = await fetch(`/api/armies/${id}`, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(data),
  });
  if (!res.ok) throw new Error('Failed to update army');
}

async function fetchCollection(): Promise<CollectionItem[]> {
  const res = await fetch('/api/collection');
  if (!res.ok) throw new Error('Failed to load collection');
  return res.json();
}

async function fetchFilterOptions(): Promise<FilterOptions> {
  const res = await fetch('/api/minis/filters');
  if (!res.ok) throw new Error('Failed to load filters');
  return res.json();
}

async function addMiniToArmy(miniatureId: number): Promise<ArmyMiniItem> {
  const res = await fetch(`/api/armies/${armyId}/miniatures`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ miniature_id: miniatureId }),
  });
  if (!res.ok) throw new Error('Failed to add mini');
  return res.json();
}

async function updateArmyMiniQty(miniatureId: number, quantity: number): Promise<ArmyMiniItem> {
  const res = await fetch(`/api/armies/${armyId}/miniatures/${miniatureId}`, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ quantity }),
  });
  if (!res.ok) throw new Error('Failed to update quantity');
  return res.json();
}

async function removeArmyMini(miniatureId: number): Promise<void> {
  const res = await fetch(`/api/armies/${armyId}/miniatures/${miniatureId}`, { method: 'DELETE' });
  if (!res.ok) throw new Error('Failed to remove mini');
}

// ---------------------------------------------------------------------------
// Points
// ---------------------------------------------------------------------------

function computeTotalPoints(): number {
  return Array.from(armyMinis.values()).reduce(
    (sum, item) => sum + (item.miniature.point_cost ?? 0) * item.quantity,
    0,
  );
}

function updatePointsDisplay(): void {
  const el = document.getElementById('points-total');
  if (el) el.textContent = String(computeTotalPoints());
}

// ---------------------------------------------------------------------------
// Army roster — compact list of minis currently in the army
// ---------------------------------------------------------------------------

function renderRosterRow(item: ArmyMiniItem): string {
  const m        = item.miniature;
  const pts      = (m.point_cost ?? 0) * item.quantity;
  const rc       = rankClass(m.rank);
  const rankBadge = m.rank
    ? `<span class="roster-rank-badge rank--${rc}">${m.rank}</span>`
    : '';
  const factions = m.factions.length > 0
    ? `<div class="roster-row__factions">${m.factions.join(', ')}</div>`
    : '';
  const img = m.image_url
    ? `<img class="roster-row__image" src="${m.image_url}" alt="${m.name ?? ''}">`
    : `<div class="roster-row__image"></div>`;
  return `
    <div class="roster-row" data-roster-id="${m.id}">
      ${img}
      <div class="roster-row__info">
        <div class="roster-row__name-line">
          <span class="roster-row__name">${m.name ?? '—'}</span>
          ${rankBadge}
        </div>
        ${factions}
        <div class="roster-row__pts">${pts} pts</div>
      </div>
      <div class="roster-row__controls">
        <sl-icon-button name="dash"  size="small" label="Decrease" data-action="decrement" data-id="${m.id}"></sl-icon-button>
        <span class="roster-row__qty">${item.quantity}</span>
        <sl-icon-button name="plus"  size="small" label="Increase" data-action="increment" data-id="${m.id}"></sl-icon-button>
      </div>
      <sl-icon-button name="trash" size="small" label="Remove from army" data-action="remove" data-id="${m.id}"
        style="color:var(--sl-color-danger-600)"></sl-icon-button>
    </div>`;
}

function renderRoster(): void {
  const roster = document.getElementById('army-roster')!;
  const items  = Array.from(armyMinis.values());
  roster.innerHTML = items.length === 0
    ? '<p class="roster-empty">No miniatures in this army yet.</p>'
    : items.map(renderRosterRow).join('');
  wireRosterHovers();
}

// ---------------------------------------------------------------------------
// Roster hover preview — shows a full mini card floating next to the row name.
// The overlay is `pointer-events: none` so it never steals the mouseleave event.
// Listeners are re-wired after every roster render since the DOM is replaced.
// ---------------------------------------------------------------------------

let previewEl: HTMLDivElement | null = null;

function getPreviewEl(): HTMLDivElement {
  if (!previewEl) {
    previewEl = document.createElement('div');
    previewEl.id = 'roster-preview';
    document.body.appendChild(previewEl);
  }
  return previewEl;
}

function showPreview(mini: Miniature, anchor: HTMLElement): void {
  const el   = getPreviewEl();
  el.innerHTML = renderCard(mini, {});
  el.style.display = 'block';

  // Position to the right of the anchor; clamp to viewport edges
  const rect   = anchor.getBoundingClientRect();
  const GAP    = 12;
  const width  = 280;
  let   left   = rect.right + GAP;
  let   top    = rect.top;

  if (left + width > window.innerWidth - 8) {
    left = rect.left - width - GAP; // flip to the left if not enough space on right
  }
  const maxTop = window.innerHeight - el.offsetHeight - 8;
  top = Math.max(8, Math.min(top, maxTop));

  el.style.left = `${left}px`;
  el.style.top  = `${top}px`;
}

function hidePreview(): void {
  if (previewEl) previewEl.style.display = 'none';
}

/** Attach mouseenter/mouseleave to each name element after every roster render. */
function wireRosterHovers(): void {
  document.querySelectorAll<HTMLElement>('.roster-row__name').forEach((nameEl) => {
    const rosterId = Number(nameEl.closest<HTMLElement>('.roster-row')?.dataset.rosterId);
    const item     = armyMinis.get(rosterId);
    if (!item) return;
    nameEl.addEventListener('mouseenter', () => showPreview(item.miniature, nameEl));
    nameEl.addEventListener('mouseleave', hidePreview);
  });
}

function refreshRosterRow(miniatureId: number): void {
  const existing = document.querySelector<HTMLElement>(`.roster-row[data-roster-id="${miniatureId}"]`);
  const item     = armyMinis.get(miniatureId);

  if (!existing) { renderRoster(); return; }
  if (!item)     { existing.remove(); }
  else           { existing.outerHTML = renderRosterRow(item); }

  wireRosterHovers();
  updatePointsDisplay();
}

// ---------------------------------------------------------------------------
// Collection grid — filterable, with "Add to army" / "×N in army" actions
// ---------------------------------------------------------------------------

function collectionActions(mini: Miniature): string {
  const owned     = collection.find((i) => i.miniature.id === mini.id)?.quantity ?? 0;
  const armyQty   = armyMinis.get(mini.id)?.quantity ?? 0;
  const remaining = owned - armyQty;

  const stockEl = armyQty > 0
    ? `<span class="army-stock ${remaining === 0 ? 'army-stock--empty' : ''}">${armyQty}/${owned} in army · <strong>${remaining} left</strong></span>`
    : `<span class="army-stock">×${owned} owned</span>`;

  if (remaining > 0) {
    const addBtn = armyQty > 0
      ? `<sl-icon-button name="plus-circle" label="Add another" data-action="add" data-id="${mini.id}" style="margin-left:auto"></sl-icon-button>`
      : `<sl-button size="small" variant="primary" outline data-action="add" data-id="${mini.id}" style="flex:1">Add to army</sl-button>`;
    return `${stockEl}${addBtn}`;
  }

  // At cap — no add button
  return stockEl;
}

function renderCollectionGrid(): void {
  const grid  = document.getElementById('cards-grid')!;
  const count = document.getElementById('results-count')!;

  const allMinis  = collection.map((i) => i.miniature);
  const filtered  = applySort(applyFilters(allMinis, filterState), sortField, sortOrder);

  if (collection.length === 0) {
    grid.innerHTML = '<p class="state-message">Your collection is empty.</p>';
    count.textContent = '';
    return;
  }

  if (filtered.length === 0) {
    grid.innerHTML = '<p class="state-message">No miniatures match the current filters.</p>';
    count.textContent = `0 of ${collection.length}`;
    return;
  }

  grid.innerHTML = filtered.map((m) => renderCard(m, { actions: collectionActions(m) })).join('');
  const n = filtered.length;
  count.textContent = `${n} of ${collection.length}`;
}

// Re-render only the affected card in the collection grid (after add)
function refreshCollectionCard(miniatureId: number): void {
  const existing = document.querySelector<HTMLElement>(`.mini-card[data-id="${miniatureId}"]`);
  const mini     = collection.find((i) => i.miniature.id === miniatureId)?.miniature;
  if (existing && mini) {
    existing.outerHTML = renderCard(mini, { actions: collectionActions(mini) });
  }
}

// ---------------------------------------------------------------------------
// Army header (name + description + points) — rendered after army loads
// ---------------------------------------------------------------------------

function renderArmyHeader(army: ArmyDetail): void {
  const el = document.getElementById('army-header-content')!;
  el.innerHTML = `
    <div class="army-header">
      <div class="army-header__meta">
        <sl-input id="army-name-input" value="${army.name}" size="large"
          style="font-weight:var(--sl-font-weight-bold)"></sl-input>
        <sl-textarea id="army-desc-input"
          value="${army.description ?? ''}" placeholder="Army description…"
          rows="2" resize="none"></sl-textarea>
      </div>
      <div class="army-header__points">
        <span class="points-total" id="points-total">${army.total_points}</span>
        <span class="points-label">points</span>
      </div>
    </div>`;

  type SlEl = HTMLElement & { value: string };
  const nameEl = document.getElementById('army-name-input') as SlEl;
  const descEl = document.getElementById('army-desc-input') as SlEl;

  nameEl.addEventListener('sl-change', async () => {
    const name = nameEl.value.trim();
    if (name) {
      await updateArmy(armyId, { name }).catch(console.error);
      document.title = `Mage Knight — ${name}`;
    }
  });
  descEl.addEventListener('sl-change', async () => {
    await updateArmy(armyId, { description: descEl.value }).catch(console.error);
  });
}

// ---------------------------------------------------------------------------
// Event delegation on the army roster
// ---------------------------------------------------------------------------

async function handleRosterClick(e: Event): Promise<void> {
  const btn  = (e.target as HTMLElement).closest('[data-action]') as HTMLElement | null;
  if (!btn) return;

  const action = btn.dataset.action!;
  const id     = Number(btn.dataset.id);
  const item   = armyMinis.get(id);
  if (!item) return;

  try {
    if (action === 'increment') {
      const updated = await updateArmyMiniQty(id, item.quantity + 1);
      armyMinis.set(id, updated);
      refreshRosterRow(id);
      refreshCollectionCard(id);
    } else if (action === 'decrement') {
      if (item.quantity <= 1) {
        await removeArmyMini(id);
        armyMinis.delete(id);
        refreshRosterRow(id);
        refreshCollectionCard(id);
        if (armyMinis.size === 0) renderRoster();
      } else {
        const updated = await updateArmyMiniQty(id, item.quantity - 1);
        armyMinis.set(id, updated);
        refreshRosterRow(id);
        refreshCollectionCard(id);
      }
    } else if (action === 'remove') {
      await removeArmyMini(id);
      armyMinis.delete(id);
      refreshRosterRow(id);
      refreshCollectionCard(id);
      if (armyMinis.size === 0) renderRoster();
    }
  } catch (err) { console.error(err); }
}

// ---------------------------------------------------------------------------
// Event delegation on the collection grid
// ---------------------------------------------------------------------------

async function handleGridClick(e: Event): Promise<void> {
  const btn = (e.target as HTMLElement).closest('[data-action="add"]') as HTMLElement | null;
  if (!btn) return;

  const id = Number(btn.dataset.id);
  const owned   = collection.find((i) => i.miniature.id === id)?.quantity ?? 0;
  const armyQty = armyMinis.get(id)?.quantity ?? 0;
  if (armyQty >= owned) return; // already at collection cap

  try {
    const updated = await addMiniToArmy(id);
    armyMinis.set(id, updated);
    refreshCollectionCard(id);
    refreshRosterRow(id);
    if (armyMinis.size === 1) renderRoster(); // replace empty-state message on first add
    updatePointsDisplay();
  } catch (err) { console.error(err); }
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

// ---------------------------------------------------------------------------
// Boot
// ---------------------------------------------------------------------------

async function init(): Promise<void> {
  const params  = new URLSearchParams(window.location.search);
  const idParam = Number(params.get('id'));
  if (!idParam) { window.location.href = '/armies.html'; return; }
  armyId = idParam;

  applyTheme(localStorage.getItem('theme') === 'dark');
  document.getElementById('btn-dark-mode')!.addEventListener('click', () => {
    applyTheme(!document.documentElement.classList.contains('sl-theme-dark'));
  });

  document.getElementById('army-roster')!.addEventListener('click', handleRosterClick);
  document.getElementById('cards-grid')!.addEventListener('click', handleGridClick);

  // Sort controls
  const sortByEl = document.getElementById('filter-sort-by') as HTMLElement & { value: string };
  sortByEl.addEventListener('sl-change', () => { sortField = sortByEl.value as SortField; renderCollectionGrid(); });
  document.getElementById('btn-sort-asc')!.addEventListener('click', () => {
    sortOrder = 'asc';
    document.getElementById('btn-sort-asc')!.setAttribute('variant', 'primary');
    document.getElementById('btn-sort-desc')!.setAttribute('variant', 'default');
    renderCollectionGrid();
  });
  document.getElementById('btn-sort-desc')!.addEventListener('click', () => {
    sortOrder = 'desc';
    document.getElementById('btn-sort-asc')!.setAttribute('variant', 'default');
    document.getElementById('btn-sort-desc')!.setAttribute('variant', 'primary');
    renderCollectionGrid();
  });

  // Mount the shared filter panel — filter options come from the minis API,
  // filtering runs client-side against the loaded collection.
  const filterOptions = await fetchFilterOptions().catch(() => ({
    factions: [], ranks: [], abilities: [], rangeTargets: [],
  }));
  createFilterPanel(
    document.getElementById('filter-container')!,
    filterOptions,
    (state) => { filterState = state; renderCollectionGrid(); },
  );

  try {
    const [army, coll] = await Promise.all([fetchArmy(armyId), fetchCollection()]);
    collection = coll;
    army.miniatures.forEach((item) => armyMinis.set(item.miniature.id, item));
    renderArmyHeader(army);
    renderRoster();
    renderCollectionGrid();
    document.title = `Mage Knight — ${army.name}`;
  } catch (err) {
    document.getElementById('cards-grid')!.innerHTML =
      '<p class="state-message">Error loading army.</p>';
    console.error(err);
  }
}

init().catch(console.error);
