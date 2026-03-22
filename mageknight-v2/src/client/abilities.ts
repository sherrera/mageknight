/**
 * Abilities page.
 *
 * Two sections:
 * 1. Reference — renders all ability descriptions from the static JSON,
 *    always visible (public and private).
 * 2. Management — ability weight categories + metrics regeneration,
 *    shown only when publicMode is false.
 */

import referenceData from './data/abilities-reference.json';

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

interface Ability {
  id: number;
  name: string;
  color: string | null;
  weight_category: string | null;
}

type Category = 'high' | 'medium' | 'low' | 'neutral' | 'negative';

const CATEGORIES: Category[] = ['high', 'medium', 'low', 'neutral', 'negative'];

// Tracks which abilities have been changed but not yet regenerated.
const pendingChanges = new Set<number>();

// ---------------------------------------------------------------------------
// API
// ---------------------------------------------------------------------------

async function fetchAbilities(): Promise<Ability[]> {
  const res = await fetch('/api/abilities');
  if (!res.ok) throw new Error('Failed to load abilities');
  return res.json();
}

async function saveCategory(id: number, category: Category): Promise<void> {
  const res = await fetch(`/api/abilities/${id}`, {
    method: 'PUT',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ weight_category: category }),
  });
  if (!res.ok) throw new Error('Failed to update ability');
}

async function regenerateMetrics(): Promise<{ updated: number }> {
  const res = await fetch('/api/minis/metrics/regenerate', { method: 'POST' });
  if (!res.ok) throw new Error('Failed to regenerate metrics');
  return res.json();
}

// ---------------------------------------------------------------------------
// Render
// ---------------------------------------------------------------------------

function categoryPill(cat: string | null): string {
  const c = cat ?? 'neutral';
  return `<span class="cat-pill cat--${c}">${c}</span>`;
}

function renderTable(abilities: Ability[]): string {
  const rows = abilities.map((ab) => {
    const cat = ab.weight_category ?? 'neutral';
    const colorSwatch = ab.color
      ? `<span class="ability-swatch" style="background:${ab.color}"></span>`
      : `<span class="ability-swatch ability-swatch--none"></span>`;

    const options = CATEGORIES.map(
      (c) => `<sl-option value="${c}">${c}</sl-option>`,
    ).join('');

    return `
      <tr data-ability-id="${ab.id}">
        <td class="ability-col-name">
          ${colorSwatch}
          <span>${ab.name}</span>
        </td>
        <td class="ability-col-category">
          <sl-select class="ability-cat-select" value="${cat}" size="small" style="width:140px">
            ${options}
          </sl-select>
        </td>
        <td class="ability-col-preview">
          <span class="cat-preview">${categoryPill(cat)}</span>
        </td>
      </tr>`;
  }).join('');

  return `
    <table class="abilities-table">
      <thead>
        <tr>
          <th>Ability</th>
          <th>Category</th>
          <th>Preview</th>
        </tr>
      </thead>
      <tbody>${rows}</tbody>
    </table>`;
}

// ---------------------------------------------------------------------------
// Wire interactions
// ---------------------------------------------------------------------------

function wireTable(abilities: Ability[]): void {
  const abilityMap = new Map(abilities.map((ab) => [ab.id, ab]));

  document.querySelectorAll<HTMLElement>('tr[data-ability-id]').forEach((row) => {
    const id  = Number(row.dataset.abilityId);
    const sel = row.querySelector<HTMLElement & { value: string }>('.ability-cat-select');
    const preview = row.querySelector<HTMLElement>('.cat-preview');
    if (!sel || !preview) return;

    sel.addEventListener('sl-change', async () => {
      const newCat = sel.value as Category;
      const ability = abilityMap.get(id);
      if (!ability) return;

      try {
        await saveCategory(id, newCat);
        ability.weight_category = newCat;
        preview.innerHTML = categoryPill(newCat);
        pendingChanges.add(id);

        // Mark the row as having an unsaved (pre-regen) change
        row.classList.add('ability-row--changed');
      } catch (err) {
        console.error(err);
      }
    });
  });
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
// Status banner
// ---------------------------------------------------------------------------

function showStatus(message: string, variant: 'success' | 'danger'): void {
  const el = document.getElementById('regen-status')!;
  el.textContent = message;
  el.className = `regen-status regen-status--${variant}`;
  el.style.display = 'block';
  setTimeout(() => { el.style.display = 'none'; }, 5000);
}

// ---------------------------------------------------------------------------
// Reference section
// ---------------------------------------------------------------------------

function renderReference(colorMap: Map<string, string>): string {
  const categories = referenceData.categories.map((cat) => `
    <section class="ref-category">
      <h3 class="ref-category__title">${cat.label} Abilities</h3>
      <div class="ref-ability-list">
        ${cat.abilities.map((ab) => {
          const color = colorMap.get(ab.name) ?? '#6b7280';
          return `
          <div class="ref-ability" data-ability-name="${ab.name.toLowerCase()}">
            <div class="ref-ability__header">
              <span class="ref-ability__swatch ref-ability__swatch--${ab.symbol}" style="background:${color}"></span>
              <span class="ref-ability__name">${ab.name}</span>
            </div>
            <p class="ref-ability__summary">${ab.summary}</p>
            <p class="ref-ability__description">${ab.description}</p>
          </div>`;
        }).join('')}
      </div>
    </section>`).join('');

  return `
    <div class="ref-filter-wrap">
      <sl-input id="ref-filter" placeholder="Filter abilities…" clearable size="small">
        <sl-icon slot="prefix" name="search"></sl-icon>
      </sl-input>
      <div class="ref-symbol-legend">
        <span class="ref-symbol-legend__item">
          <span class="ref-ability__swatch ref-ability__swatch--square" style="background:#6b7280"></span> Original
        </span>
        <span class="ref-symbol-legend__item">
          <span class="ref-ability__swatch ref-ability__swatch--circle" style="background:#6b7280"></span> Whirlwind
        </span>
      </div>
    </div>
    ${categories}`;
}

function wireFilter(): void {
  const input = document.getElementById('ref-filter') as HTMLElement & { value: string };
  if (!input) return;

  function applyFilter() {
    const q = input.value.toLowerCase().trim();
    document.querySelectorAll<HTMLElement>('.ref-ability').forEach((el) => {
      const name = el.dataset.abilityName ?? '';
      el.style.display = !q || name.includes(q) ? '' : 'none';
    });
    // Hide category headers that have no visible abilities
    document.querySelectorAll<HTMLElement>('.ref-category').forEach((section) => {
      const visible = Array.from(section.querySelectorAll<HTMLElement>('.ref-ability'))
        .some((el) => el.style.display !== 'none');
      section.style.display = visible ? '' : 'none';
    });
  }

  input.addEventListener('sl-input', applyFilter);
  input.addEventListener('sl-clear', applyFilter);
}

// ---------------------------------------------------------------------------
// Boot
// ---------------------------------------------------------------------------

async function init(): Promise<void> {
  applyTheme(localStorage.getItem('theme') === 'dark');
  document.getElementById('btn-dark-mode')!.addEventListener('click', () => {
    applyTheme(!document.documentElement.classList.contains('sl-theme-dark'));
  });

  const config = await fetch('/api/config').then((r) => r.json()).catch(() => ({}));
  const publicMode = config.publicMode === true;

  if (publicMode) {
    document.querySelectorAll<HTMLElement>('[data-public-hide]').forEach((el) => el.remove());
  }

  // Fetch ability colours from API — available in both public and private mode.
  // Falls back to grey if the fetch fails so the page still renders.
  const apiAbilities: Ability[] = await fetchAbilities().catch(() => []);
  const colorMap = new Map(apiAbilities.map((a) => [a.name, a.color ?? '#6b7280']));

  document.getElementById('abilities-reference')!.innerHTML = renderReference(colorMap);
  wireFilter();

  // Management section — skip in public mode
  if (publicMode) return;

  const wrap = document.getElementById('abilities-table-wrap')!;

  let abilities: Ability[];
  try {
    abilities = await fetchAbilities();
  } catch {
    wrap.innerHTML = '<p class="state-message">Error loading abilities.</p>';
    return;
  }

  wrap.innerHTML = renderTable(abilities);
  wireTable(abilities);

  document.getElementById('btn-regenerate')!.addEventListener('click', async () => {
    const btn = document.getElementById('btn-regenerate') as HTMLElement & { loading: boolean };
    btn.setAttribute('loading', '');

    try {
      const result = await regenerateMetrics();
      pendingChanges.clear();
      document.querySelectorAll('.ability-row--changed').forEach((r) => r.classList.remove('ability-row--changed'));
      showStatus(`Scores regenerated — ${result.updated} miniatures updated.`, 'success');
    } catch (err) {
      showStatus('Error regenerating scores. Check the console.', 'danger');
      console.error(err);
    } finally {
      btn.removeAttribute('loading');
    }
  });
}

init().catch(console.error);
