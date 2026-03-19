# Mage Knight v2 — Rewrite Plan

## Documentation Philosophy

Documentation is a first-class citizen in this project. The rule is: **document why and intent, not what**.

What code does can be read from the code itself. What it can't tell you is *why* a decision was made, what alternatives were considered, or what constraint drove a choice. That's what we write down.

Examples of what we document:
- Why Prisma over raw SQL (typed client, introspects existing schema, easier for future stats work)
- Why a route was split a certain way (domain boundary reason, not "because I split it")
- Why a component exists rather than inline code (reuse, or isolation from a complexity that isn't obvious)

Examples of what we don't document:
- `// loops over minis and returns them` — readable from the code
- `// sets name to the value of input` — not documentation, noise

Every non-trivial decision in a file should have a one-line comment referencing *why*, not *what*. Public API routes and shared components should have JSDoc blocks explaining their contract and intent.

---

## Context

The original project (`/archive`) was built organically over time in two phases:

1. **Scraper** — Python + BeautifulSoup, scraped miniature data from knight-ware.com. After many iterations it was successful. Data covers 9 sets (~1,084 miniatures) including mkd, minions, lancers, pyramid, sinister, alpha, unlim, ww, and up.

2. **Webapp** — Flask backend + vanilla JS frontend, grown without a clear structure. It works but is undocumented, has no component model, and mixes concerns throughout. This is what we're replacing.

The data itself is solid and lives in PostgreSQL. Everything here is about the application layer.

---

## What We're Keeping

- **PostgreSQL database** — the authoritative source of truth. Schema is clean, don't touch it.
- **Images** — in `archive/webapp/static/images/`, will be moved to `mageknight-v2/public/images/`.
- **Backup** — `backups/mageknight_db_20260318_185020.sql` (571 KB, full dump including user data).
- **Scraper** — lives in `archive/scraper/`, still works if new sets are ever scraped.

## What We're Dropping (for now)

- **Metrics** — the current power/efficiency score system works but the methodology isn't fully satisfying. Will be revisited and redesigned separately, later. No metrics in v2 initially.
- **Shopping list** — no active use case right now. Deferred, not deleted.

---

## Data Model

The existing PostgreSQL schema is the source of truth. Prisma introspects it directly — no manual rewriting needed.

**Tables:**
- `miniatures` — core data: name, set, rank, cost, collector_number, frq, arc, range, range_targets, image_url, source_url
- `click_stats` — per-click dial data: speed, attack, defense, damage + ability FKs
- `abilities` — unique ability names with display colors
- `factions` — unique faction names
- `miniature_factions` — many-to-many association
- `collection_items` — user's owned minis with quantities (119 items as of 2026-03-18)
- `armies` + `army_miniatures` — army builder state (8 armies as of 2026-03-18)
- `shopping_list_items` — deferred

---

## Tech Stack

| Layer | Choice | Why |
|---|---|---|
| Language | TypeScript everywhere | One language front and back reduces context switching; types catch mistakes in stat-heavy logic |
| Backend | Express.js | Minimal and explicit — teaches what a framework actually does without hiding the wiring. User wanted to learn it. |
| ORM | Prisma | Introspects the existing Postgres schema without manual rewriting; generates a typed client that makes complex queries safe; raw SQL escape hatch for future stats work |
| Database | PostgreSQL | Already running with the data; good fit for the analytical queries likely to come |
| Frontend | Vite + TypeScript + Shoelace | Vite for fast iteration; Shoelace for polished web components without a heavy framework; no reactive framework needed for this data-display use case |
| Dev setup | Single Express app serves API + frontend build | Avoids CORS config and two-process dev; fine for a local-only tool |

---

## Project Structure

```
mageknight-v2/
├── src/
│   ├── server/
│   │   ├── routes/          # One file per domain: minis.ts, collection.ts, armies.ts
│   │   ├── middleware/       # Error handling, request logging
│   │   └── index.ts         # Express app entrypoint and middleware chain
│   └── client/
│       ├── pages/           # browse.ts, collection.ts, army-builder.ts
│       ├── components/      # Reusable UI pieces shared across pages
│       └── main.ts
├── prisma/
│   ├── schema.prisma        # Introspected from existing DB — do not hand-edit
│   └── migrations/          # Only needed if schema changes are required
├── public/
│   └── images/              # Mini images (moved from archive/webapp/static/images/)
├── docs/
│   ├── plan.md              # This file
│   └── api.md               # API reference — updated as routes are built
├── package.json
├── tsconfig.json
└── README.md                # Setup instructions and project orientation
```

---

## Feature Priority

1. **Browse** — filter and view all miniatures with click dials
2. **Collection** — view and manage owned minis with quantities
3. **Army Builder** — create and manage armies
4. *(deferred)* Shopping List
5. *(deferred)* Metrics / power scores — methodology to be redesigned before implementing

---

## Phases

Progress is tracked with checkboxes. When picking up a session, read this section first to find where to continue. Mark items `[x]` as they are completed.

---

### Phase 1 — Scaffold

Get a running skeleton: server boots, DB is connected, a single test endpoint responds. No features yet, just the foundation everything else builds on.

- [x] **1.1** Initialize `package.json` with dependencies (express, prisma, vite, typescript, shoelace, tsx for dev)
- [x] **1.2** Configure `tsconfig.json` for server and client (separate configs or path aliases)
- [x] **1.3** Minimal Express `index.ts` — boots on a port, has a health-check route, serves `public/` as static
- [x] **1.4** Add error-handling and request-logging middleware
- [x] **1.5** Run `prisma db pull` to introspect the existing Postgres schema and generate `schema.prisma`
- [x] **1.6** Verify Prisma client connects and can query `miniatures`
- [x] **1.7** Move images from `archive/webapp/static/images/` to `public/images/`
- [x] **1.8** Write `README.md` with: what the project is, prerequisites, how to run, how to connect to Postgres

---

### Phase 2 — Browse

The core feature. A user can see all miniatures, filter them down, and read their full click dial.

- [x] **2.1** `GET /api/minis` — returns miniatures with click stats and abilities; supports query params: `name`, `faction[]`, `rank[]`, `ability`, `min_cost`, `max_cost`, `min_speed`, `min_attack`, `min_defense`, `min_damage`, `min_range`, `sort_by`, `sort_order`
- [x] **2.2** `GET /api/minis/filters` — returns all distinct factions, ranks, and abilities (used to populate filter dropdowns)
- [x] **2.3** `GET /api/minis/:id` — returns a single miniature with full click stats (used for detail views)
- [x] **2.4** Document all browse routes in `docs/api.md`
- [x] **2.5** Browse page HTML shell with Shoelace layout
- [x] **2.6** Filter panel — faction, rank, ability dropdowns; cost range; stat minimums
- [x] **2.7** Mini card component — name, set, rank, cost, image, factions
- [x] **2.8** Click dial display on card — per-click stats with ability color coding (ability colors come from the DB)
- [x] **2.9** Sort controls — by cost, name, set
- [x] **2.10** Wire filter state to API calls (debounced, updates card grid)

---

### Phase 3 — Collection

Lets the user see which minis they own and manage quantities. Builds on the browse API — collection is a filtered view of browse plus quantity controls.

- [x] **3.1** `GET /api/collection` — returns collection items with full miniature data joined
- [x] **3.2** `POST /api/collection` — add a mini to collection (idempotent — if exists, increments)
- [x] **3.3** `PUT /api/collection/:miniatureId` — update quantity
- [x] **3.4** `DELETE /api/collection/:miniatureId` — remove from collection
- [x] **3.5** Document collection routes in `docs/api.md`
- [x] **3.6** Add "Add to collection" action on browse mini cards
- [x] **3.7** Collection page — same card layout as browse but filtered to owned minis
- [x] **3.8** Quantity controls on collection cards (increment, decrement, remove)
- [x] **3.9** Show collection ownership indicator on browse page (e.g. badge if owned)
- [x] **3.10** Extract filter panel to shared component (`filter-panel.ts`) used by both pages
- [x] **3.11** Ability filter — multi-select with AND semantics (mini must have all selected abilities)
- [x] **3.12** Add max_range, range_targets, and min_clicks filters to both API and client
- [x] **3.13** Fix filter input clipping in sidebar (Shoelace inputs overflow without `min-width: 0`)

---

### Phase 4 — Army Builder

Lets the user group owned minis into named armies with point totals.

- [x] **4.1** `GET /api/armies` — list all armies with mini count and total points
- [x] **4.2** `POST /api/armies` — create army
- [x] **4.3** `PUT /api/armies/:id` — rename or update description
- [x] **4.4** `DELETE /api/armies/:id` — delete army
- [x] **4.5** `GET /api/armies/:id` — army detail with full mini data and quantities
- [x] **4.6** `POST /api/armies/:id/miniatures` — add mini to army
- [x] **4.7** `PUT /api/armies/:id/miniatures/:miniatureId` — update quantity in army
- [x] **4.8** `DELETE /api/armies/:id/miniatures/:miniatureId` — remove mini from army
- [x] **4.9** Document army routes in `docs/api.md`
- [x] **4.10** Armies list page — shows all armies, create button, delete button
- [x] **4.11** Army builder page — shows army minis, running point total, add-from-collection flow
- [x] **4.12** Add "Add to army" action on collection page (opens army picker)

---

### Phase 5 — Metrics (Deferred)

Not started. Requires a separate design session to decide what the metrics should measure and how to compute them. The existing `archive/scripts/compute_metrics.py` can serve as a reference but should not be ported as-is.

- [ ] **5.0** Design session: decide metric definitions before any code is written
- [ ] *(subtasks TBD after design session)*

---

### Phase 6 — Shopping List (Deferred)

Not started. No active use case at the time of this writing.

- [ ] *(subtasks TBD when needed)*

---

## Decisions Log

| Decision | Choice | Why |
|---|---|---|
| Deployment | Local only | Personal tool; hosting adds complexity with no benefit |
| Database | Keep PostgreSQL | Already populated with 1,084 minis and user data; good for future analytical queries |
| Metrics | Deferred | Current methodology (power/efficiency scores) not fully satisfying; will redesign before reimplementing |
| Shopping list | Deferred | No active purchase plans; not worth building now |
| Backend language | TypeScript + Express | User wanted to learn Express; it's minimal enough to be instructive |
| ORM | Prisma | Best TypeScript + Postgres pairing; introspects existing schema; typed raw SQL for stats later |
| Frontend | Vite + Shoelace + TypeScript | No reactive framework needed for this use case; Shoelace has polished components; Vite is fast |
| Single process | Express serves both API and frontend | No CORS config; simpler local dev; no reason to separate for a personal tool |
| Images | Move to `public/images/` | Storage is not a concern; cleaner than referencing archive/ |
| Old code | Moved to `archive/` | Out of the way but preserved for reference (scraper still works, data pipeline still there) |
| Mini card | Extracted to `src/client/components/mini-card.ts` before Phase 3 | Browse, Collection, and Army Builder all show cards — shared component means card changes happen once |
| Filter panel | Extracted to `src/client/components/filter-panel.ts` in Phase 3 | Both Browse and Collection need the same filters; shared component keeps filter state logic and HTML in one place |
| Collection filtering | Client-side via `applyFilters()` (not a server round-trip) | 119 items fits in memory; no latency for filter changes, and the logic mirrors the server filter for consistency |
| Ability filter | AND semantics (must have ALL selected abilities) | More useful than OR when building armies — you want minis that have CHARGE *and* TOUGHNESS, not either one |
| min_clicks | Post-filter in application code, not Prisma WHERE | Prisma cannot efficiently count a filtered relation in a WHERE clause; post-filtering a 1,084-row result set is negligible |
| Filter input clipping | `min-width: 0` on `.filters sl-input/sl-select` in main.css | Shoelace inputs have an internal default min-width that ignores parent width constraints in a fixed-width grid column |
| Rank colours | Weak=`#ffff00`, Standard=blue, Tough=red, Unique=orange, Promo=purple | Weak yellow matches the DEMORALIZED ability chip colour from the game; others follow game convention for tier recognition |
| Dead clicks | Each KO click shows 💀 per stat cell | Matches the physical dial (skull symbol per stat when KO'd); keeps all card heights uniform vs. collapsing to one row |
| Image fit | `object-fit: contain` | Scraper images have inconsistent framing — `cover` clips figures; `contain` shows the full image with neutral fill |
