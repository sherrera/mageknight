/**
 * Armies list page — shows all armies with summary stats.
 * Clicking an army card navigates to army.html?id=<id>.
 */

// ---------------------------------------------------------------------------
// Types
// ---------------------------------------------------------------------------

interface ArmySummary {
  id: number;
  name: string;
  description: string | null;
  created_at: string | null;
  mini_count: number;
  total_quantity: number;
  total_points: number;
}

// ---------------------------------------------------------------------------
// API
// ---------------------------------------------------------------------------

async function fetchArmies(): Promise<ArmySummary[]> {
  const res = await fetch('/api/armies');
  if (!res.ok) throw new Error('Failed to load armies');
  return res.json();
}

async function createArmy(name: string, description: string): Promise<ArmySummary> {
  const res = await fetch('/api/armies', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ name, description: description || undefined }),
  });
  if (!res.ok) throw new Error('Failed to create army');
  return res.json();
}

async function deleteArmy(id: number): Promise<void> {
  const res = await fetch(`/api/armies/${id}`, { method: 'DELETE' });
  if (!res.ok) throw new Error('Failed to delete army');
}

// ---------------------------------------------------------------------------
// Rendering
// ---------------------------------------------------------------------------

function renderArmyCard(a: ArmySummary): string {
  return `
    <div class="army-card" data-army-id="${a.id}">
      <p class="army-card__name">${a.name}</p>
      ${a.description ? `<p class="army-card__description">${a.description}</p>` : ''}
      <div class="army-card__stats">
        <span class="army-card__stat"><strong>${a.mini_count}</strong> type${a.mini_count !== 1 ? 's' : ''}</span>
        <span class="army-card__stat"><strong>${a.total_quantity}</strong> piece${a.total_quantity !== 1 ? 's' : ''}</span>
        <span class="army-card__stat"><strong>${a.total_points}</strong> pts</span>
      </div>
      <div class="army-card__actions" data-stop-nav>
        <sl-icon-button name="trash" label="Delete army" data-action="delete" data-id="${a.id}"
          style="color:var(--sl-color-danger-600)"></sl-icon-button>
      </div>
    </div>`;
}

let armies: ArmySummary[] = [];

function renderGrid(): void {
  const grid = document.getElementById('army-cards')!;
  if (armies.length === 0) {
    grid.innerHTML = '<p class="state-message">No armies yet. Create one to get started.</p>';
    return;
  }
  grid.innerHTML = armies.map(renderArmyCard).join('');
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
  applyTheme(localStorage.getItem('theme') === 'dark');
  document.getElementById('btn-dark-mode')!.addEventListener('click', () => {
    applyTheme(!document.documentElement.classList.contains('sl-theme-dark'));
  });

  // Card grid — navigate to army detail or handle delete button
  document.getElementById('army-cards')!.addEventListener('click', async (e: Event) => {
    const deleteBtn = (e.target as HTMLElement).closest('[data-action="delete"]') as HTMLElement | null;
    if (deleteBtn) {
      e.stopPropagation();
      const id = Number(deleteBtn.dataset.id);
      const army = armies.find((a) => a.id === id);
      if (!army) return;
      // Simple confirm — no modal needed for a destructive action this straightforward
      if (!confirm(`Delete "${army.name}"? This cannot be undone.`)) return;
      try {
        await deleteArmy(id);
        armies = armies.filter((a) => a.id !== id);
        renderGrid();
      } catch (err) { console.error(err); }
      return;
    }

    // Navigate to army detail on card click (but not on action button clicks)
    const card = (e.target as HTMLElement).closest<HTMLElement>('.army-card');
    if (card) {
      window.location.href = `/army.html?id=${card.dataset.armyId}`;
    }
  });

  // New army dialog
  const dialog   = document.getElementById('new-army-dialog') as HTMLElement & { show(): void; hide(): void };
  const nameEl   = document.getElementById('new-army-name')        as HTMLElement & { value: string };
  const descEl   = document.getElementById('new-army-description') as HTMLElement & { value: string };

  document.getElementById('btn-new-army')!.addEventListener('click', () => {
    nameEl.value = '';
    descEl.value = '';
    dialog.show();
  });
  document.getElementById('btn-cancel-new-army')!.addEventListener('click', () => dialog.hide());
  document.getElementById('btn-confirm-new-army')!.addEventListener('click', async () => {
    const name = nameEl.value.trim();
    if (!name) return;
    try {
      const army = await createArmy(name, descEl.value.trim());
      dialog.hide();
      // Navigate directly to the new army's builder page
      window.location.href = `/army.html?id=${army.id}`;
    } catch (err) { console.error(err); }
  });

  try {
    armies = await fetchArmies();
    renderGrid();
  } catch (err) {
    document.getElementById('army-cards')!.innerHTML =
      '<p class="state-message">Error loading armies.</p>';
    console.error(err);
  }
}

init().catch(console.error);
