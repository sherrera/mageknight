# Mage Knight

Personal tool for browsing and managing a Mage Knight miniatures collection.
Live at **https://mageknight-production.up.railway.app** (browse + collection, read-only).

## Prerequisites

- Node.js 22+
- PostgreSQL running locally with the `mageknight_db` database

The database should already be populated. If starting from scratch, restore from
the backup in `../backups/`.

## Setup

```bash
npm install
npx prisma generate   # generates the typed DB client from prisma/schema.prisma
```

Create a `.env` file:

```
DATABASE_URL="postgresql://mageknight_user:test@localhost:5432/mageknight_db"
PORT=3000
```

Optional flags:

```
PUBLIC_MODE=true   # hides army builder + abilities, makes collection read-only
```

## Running locally

Two terminals — Express serves the API while Vite provides hot module replacement:

```bash
# Terminal 1 — Express API + static file server on :3000
npm run dev:server

# Terminal 2 — Vite dev server on :5173 (proxies /api to :3000)
npm run dev:client
```

Open http://localhost:5173. `GET /api/health` confirms the DB is reachable.

## Building for production

```bash
npm run build        # Vite build + tsc
node dist/index.js   # runs the compiled server
```

## Deploying to Railway

```bash
railway up --detach  # uploads and deploys from this directory
```

Railway environment variables required:
- `DATABASE_URL` — set automatically by the Postgres addon
- `PUBLIC_MODE=true`
- `NODE_ENV=production`

## Image pipeline

Original images live in `public/images/` (untouched). Processed images served by the app are in `public/images-webp/` (background-removed, WebP, 84% smaller than originals).

To regenerate processed images:
```bash
# Step 1 — resize to 500×500
python3 scripts/process_images_step1_resize.py

# Step 2 — remove backgrounds (requires GPU + CUDA libs)
bash scripts/run_step2.sh

# Step 3 — convert to WebP
python3 scripts/process_images_step3_webp.py
```

Background-removed PNGs are backed up at `../backups/images-nobg/` (step 2 takes ~7hrs on GPU).

## Seeding the database

A data dump of all 1,084 miniatures (no collection or army data) is included at `data/seed.sql`.

```bash
# First, push the schema
npx prisma db push

# Then load the data
psql $DATABASE_URL < data/seed.sql
```

## If the DB schema changes

```bash
npx prisma db pull      # re-introspects the live DB into schema.prisma
npx prisma generate     # regenerates the typed client
```

## Project structure

```
src/server/         Express backend
  index.ts          App entrypoint, middleware chain, PUBLIC_MODE flag
  db.ts             Prisma client singleton
  middleware/       logger.ts, errorHandler.ts
  routes/           One file per domain: minis.ts, collection.ts, armies.ts,
                    abilities.ts, metrics.ts
src/client/
  components/       mini-card.ts, filter-panel.ts — shared across pages
  styles/           main.css, mini-card.css, browse.css, collection.css, ...
  *.html / *.ts     Per-page entry points
prisma/
  schema.prisma     Introspected from DB — do not hand-edit
public/
  images/           Original mini images (untouched)
  images-webp/      Web-optimised images served by the app
scripts/
  process_images_step1_resize.py
  process_images_step2_rembg.py + run_step2.sh
  process_images_step3_webp.py
  compute_metrics.py
docs/
  plan.md           Project history and decisions log
  api.md            API reference
```

## Docs

See [`docs/plan.md`](docs/plan.md) for project history and decisions.
See [`docs/api.md`](docs/api.md) for the API reference.
