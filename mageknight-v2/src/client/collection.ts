/**
 * Collection page — shows the user's owned miniatures with quantity controls.
 *
 * The full collection is loaded once and stored in `collectionMap`. All
 * filtering is done client-side via `applyFilters` from the shared
 * filter-panel component — no round-trip needed since 119 items is tiny.
 * Mutations (increment/decrement/remove) call the API and re-render only
 * the affected card so the page stays responsive.
 */

import { renderCard, type Miniature } from './components/mini-card';
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

interface CollectionItem {
  quantity: number;
  miniature: Miniature;
}

// ---------------------------------------------------------------------------
// State — held in a Map so we can update individual items by miniature id
// without re-fetching the whole collection.
// ---------------------------------------------------------------------------

const collectionMap = new Map<number, CollectionItem>();
let filterState: FilterState = defaultState();
let sortField: SortField = 'name';
let sortOrder: 'asc' | 'desc' = 'asc';

// ---------------------------------------------------------------------------
// API
// ---------------------------------------------------------------------------

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

async function updateQuantity(miniatureId: number, quantity: number): Promise<CollectionItem> {
  const res = await fetch(`/api/collection/${miniatureId}`, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ quantity }),
  });
  if (!res.ok) throw new Error('Failed to update quantity');
  return res.json();
}

async function removeFromCollection(miniatureId: number): Promise<void> {
  const res = await fetch(`/api/collection/${miniatureId}`, { method: 'DELETE' });
  if (!res.ok) throw new Error('Failed to remove from collection');
}

// Transaction log types — mirrors the server response shape.
interface TransactionEntry {
  id: number;
  timestamp: string;
  action: string;
  miniatureId: number;
  miniatureName: string;
  newQty: number;
  prevQty: number;
}

async function fetchTransactions(): Promise<TransactionEntry[]> {
  const res = await fetch('/api/collection/transactions');
  if (!res.ok) throw new Error('Failed to load transaction history');
  return res.json();
}

// ---------------------------------------------------------------------------
// Army picker — fetch armies so the user can choose where to add a mini
// ---------------------------------------------------------------------------

interface ArmySummary { id: number; name: string; total_points: number; mini_count: number; }

async function fetchArmies(): Promise<ArmySummary[]> {
  const res = await fetch('/api/armies');
  if (!res.ok) throw new Error('Failed to load armies');
  return res.json();
}

async function addMiniToArmy(armyId: number, miniatureId: number): Promise<void> {
  const res = await fetch(`/api/armies/${armyId}/miniatures`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ miniature_id: miniatureId }),
  });
  if (!res.ok) throw new Error('Failed to add to army');
}

async function clearTransactions(): Promise<void> {
  const res = await fetch('/api/collection/transactions', { method: 'DELETE' });
  if (!res.ok) throw new Error('Failed to clear transaction history');
}

// ---------------------------------------------------------------------------
// Rendering
// ---------------------------------------------------------------------------

function quantityActions(item: CollectionItem): string {
  const id = item.miniature.id;
  return `
    <div class="quantity-controls">
      <sl-icon-button
        name="dash"
        label="Decrease quantity"
        data-action="decrement"
        data-id="${id}"
      ></sl-icon-button>
      <span class="quantity-value">${item.quantity}</span>
      <sl-icon-button
        name="plus"
        label="Increase quantity"
        data-action="increment"
        data-id="${id}"
      ></sl-icon-button>
      <sl-icon-button
        name="shield-plus"
        label="Add to army"
        data-action="add-to-army"
        data-id="${id}"
        title="Add to army"
        style="margin-left: auto"
      ></sl-icon-button>
      <sl-icon-button
        name="trash"
        label="Remove from collection"
        data-action="remove"
        data-id="${id}"
        style="color: var(--sl-color-danger-600)"
      ></sl-icon-button>
    </div>`;
}

function renderItem(item: CollectionItem): string {
  return renderCard(item.miniature, { actions: quantityActions(item) });
}

function renderGrid(): void {
  const grid = document.getElementById('cards-grid')!;
  const count = document.getElementById('results-count')!;

  if (collectionMap.size === 0) {
    grid.innerHTML = '<p class="state-message">Your collection is empty. Add minis from the Browse page.</p>';
    count.textContent = '0 miniatures';
    return;
  }

  // Apply the shared filter logic client-side — mirrors the server filter so
  // both pages behave consistently without a round-trip for each filter change.
  const allMinis = Array.from(collectionMap.values()).map((i) => i.miniature);
  const filtered = applySort(applyFilters(allMinis, filterState), sortField, sortOrder)
    .map((m) => collectionMap.get(m.id)!);

  if (filtered.length === 0) {
    grid.innerHTML = '<p class="state-message">No miniatures match the current filters.</p>';
    count.textContent = `0 of ${collectionMap.size} miniatures`;
    return;
  }

  grid.innerHTML = filtered.map(renderItem).join('');

  const total = Array.from(collectionMap.values()).reduce((s, i) => s + i.quantity, 0);
  const n = collectionMap.size;
  count.textContent = `${n} miniature${n === 1 ? '' : 's'} · ${total} total`;
}

// Re-render a single card in place, avoiding a full grid repaint.
function refreshCard(miniatureId: number): void {
  const item = collectionMap.get(miniatureId);
  const existing = document.querySelector<HTMLElement>(`.mini-card[data-id="${miniatureId}"]`);
  if (!existing) return;

  if (!item) {
    existing.remove();
  } else {
    existing.outerHTML = renderItem(item);
  }

  // Update the count line without touching the grid
  const total = Array.from(collectionMap.values()).reduce((s, i) => s + i.quantity, 0);
  const n = collectionMap.size;
  document.getElementById('results-count')!.textContent =
    `${n} miniature${n === 1 ? '' : 's'} · ${total} total`;
}

// ---------------------------------------------------------------------------
// Event delegation — one listener on the grid handles all card buttons.
// Delegation is used because cards are rendered as HTML strings and re-inserted
// on updates, so per-element listeners would be lost after each re-render.
// ---------------------------------------------------------------------------

async function handleGridClick(e: Event): Promise<void> {
  const btn = (e.target as HTMLElement).closest('[data-action]') as HTMLElement | null;
  if (!btn) return;

  const action = btn.dataset.action!;
  const id = Number(btn.dataset.id);
  const item = collectionMap.get(id);
  if (!item) return;

  try {
    if (action === 'increment') {
      const updated = await updateQuantity(id, item.quantity + 1);
      collectionMap.set(id, updated);
      refreshCard(id);
    } else if (action === 'decrement') {
      if (item.quantity <= 1) {
        await removeFromCollection(id);
        collectionMap.delete(id);
        refreshCard(id);
        if (collectionMap.size === 0) renderGrid();
      } else {
        const updated = await updateQuantity(id, item.quantity - 1);
        collectionMap.set(id, updated);
        refreshCard(id);
      }
    } else if (action === 'remove') {
      await removeFromCollection(id);
      collectionMap.delete(id);
      refreshCard(id);
      if (collectionMap.size === 0) renderGrid();
    }
  } catch (err) {
    console.error(err);
  }
}

// ---------------------------------------------------------------------------
// History modal
// ---------------------------------------------------------------------------

const ACTION_LABELS: Record<string, string> = {
  add:       'Added',
  increment: '+1',
  decrement: '-1',
  remove:    'Removed',
  set:       'Set quantity',
};

function formatAction(e: TransactionEntry): string {
  const label = ACTION_LABELS[e.action] ?? e.action;
  if (e.action === 'add')    return `${label} (×${e.newQty})`;
  if (e.action === 'remove') return label;
  if (e.action === 'set')    return `${label} to ×${e.newQty}`;
  return `${label} → ×${e.newQty}`;
}

function formatTimestamp(iso: string): string {
  return new Date(iso).toLocaleString(undefined, {
    month: 'short', day: 'numeric',
    hour: '2-digit', minute: '2-digit',
  });
}

function renderHistoryList(entries: TransactionEntry[]): string {
  if (entries.length === 0) {
    return '<p class="history-empty">No transactions recorded yet.</p>';
  }
  return `<div class="history-list">${entries.map((e) => `
    <div class="history-entry">
      <div class="history-entry__info">
        <span class="history-entry__name">${e.miniatureName}</span>
        <span class="history-entry__action history-entry__action--${e.action}">${formatAction(e)}</span>
      </div>
      <span class="history-entry__time">${formatTimestamp(e.timestamp)}</span>
    </div>`).join('')}</div>`;
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

  document.getElementById('btn-dark-mode')!.addEventListener('click', () => {
    applyTheme(!document.documentElement.classList.contains('sl-theme-dark'));
  });
  document.getElementById('btn-stat-tiers')!.addEventListener('click', () => {
    applyStatTiers(!document.documentElement.classList.contains('stat-tiers'));
  });

  document.getElementById('cards-grid')!.addEventListener('click', handleGridClick);

  // Sort controls
  const sortByEl = document.getElementById('filter-sort-by') as HTMLElement & { value: string };
  sortByEl.addEventListener('sl-change', () => { sortField = sortByEl.value as SortField; renderGrid(); });
  document.getElementById('btn-sort-asc')!.addEventListener('click', () => {
    sortOrder = 'asc';
    document.getElementById('btn-sort-asc')!.setAttribute('variant', 'primary');
    document.getElementById('btn-sort-desc')!.setAttribute('variant', 'default');
    renderGrid();
  });
  document.getElementById('btn-sort-desc')!.addEventListener('click', () => {
    sortOrder = 'desc';
    document.getElementById('btn-sort-asc')!.setAttribute('variant', 'default');
    document.getElementById('btn-sort-desc')!.setAttribute('variant', 'primary');
    renderGrid();
  });

  // History modal
  const dialog   = document.getElementById('history-dialog') as HTMLElement & { show(): void; hide(): void };
  const histList = document.getElementById('history-list')!;

  document.getElementById('btn-history')!.addEventListener('click', async () => {
    histList.innerHTML = '<p class="history-empty">Loading…</p>';
    dialog.show();
    try {
      const entries = await fetchTransactions();
      histList.innerHTML = renderHistoryList(entries);
    } catch {
      histList.innerHTML = '<p class="history-empty">Failed to load history.</p>';
    }
  });
  document.getElementById('btn-close-history')!.addEventListener('click', () => dialog.hide());
  document.getElementById('btn-clear-history')!.addEventListener('click', async () => {
    try {
      await clearTransactions();
      histList.innerHTML = renderHistoryList([]);
    } catch {
      // Non-fatal — leave the list as-is
    }
  });

  // Army picker dialog
  let pendingMiniId = 0;
  const armyDialog   = document.getElementById('army-picker-dialog') as HTMLElement & { show(): void; hide(): void };
  const armyListEl   = document.getElementById('army-picker-list')!;

  document.getElementById('cards-grid')!.addEventListener('click', async (e: Event) => {
    const btn = (e.target as HTMLElement).closest('[data-action="add-to-army"]') as HTMLElement | null;
    if (!btn) return;
    pendingMiniId = Number(btn.dataset.id);
    armyListEl.innerHTML = '<p style="color:var(--sl-color-neutral-400)">Loading…</p>';
    armyDialog.show();
    try {
      const armies = await fetchArmies();
      if (armies.length === 0) {
        armyListEl.innerHTML = `<p style="color:var(--sl-color-neutral-400)">No armies yet. <a href="/armies.html">Create one first.</a></p>`;
        return;
      }
      armyListEl.innerHTML = armies.map((a) => `
        <div style="display:flex;align-items:center;justify-content:space-between;padding:var(--sl-spacing-x-small) 0;border-bottom:1px solid var(--sl-color-neutral-100)">
          <div>
            <div style="font-size:var(--sl-font-size-small);font-weight:var(--sl-font-weight-semibold)">${a.name}</div>
            <div style="font-size:var(--sl-font-size-x-small);color:var(--sl-color-neutral-500)">${a.mini_count} types · ${a.total_points} pts</div>
          </div>
          <sl-button size="small" variant="primary" outline data-action="pick-army" data-army-id="${a.id}">Add</sl-button>
        </div>`).join('');
    } catch { armyListEl.innerHTML = '<p style="color:var(--sl-color-danger-600)">Failed to load armies.</p>'; }
  });

  armyListEl.addEventListener('click', async (e: Event) => {
    const btn = (e.target as HTMLElement).closest('[data-action="pick-army"]') as HTMLElement | null;
    if (!btn || !pendingMiniId) return;
    const armyId = Number(btn.dataset.armyId);
    try {
      await addMiniToArmy(armyId, pendingMiniId);
      armyDialog.hide();
    } catch (err) { console.error(err); }
  });

  document.getElementById('btn-close-army-picker')!.addEventListener('click', () => armyDialog.hide());

  // Load filter options and mount the shared panel. Filter options come from
  // the minis API (same data source as Browse) — factions, ranks, abilities,
  // and range targets. Filtering runs client-side against the loaded collection.
  const filterOptions = await fetchFilterOptions().catch(() => ({
    factions: [], ranks: [], abilities: [], rangeTargets: [],
  }));

  createFilterPanel(
    document.getElementById('filter-container')!,
    filterOptions,
    (state) => { filterState = state; renderGrid(); },
  );

  try {
    const items = await fetchCollection();
    items.forEach((item) => collectionMap.set(item.miniature.id, item));
    renderGrid();
  } catch (err) {
    document.getElementById('cards-grid')!.innerHTML =
      '<p class="state-message">Error loading collection.</p>';
    console.error(err);
  }
}

init().catch(console.error);
