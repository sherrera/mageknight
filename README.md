# Mage Knight v2

Personal tool for browsing and managing a Mage Knight miniatures collection.

## Prerequisites

- Node.js 22+
- PostgreSQL running locally with the `mageknight_db` database

The database should already be populated. If starting from scratch, restore from
the backup in `../backups/`.

## Setup

```bash
cd mageknight-v2
npm install
npx prisma generate   # generates the typed DB client from prisma/schema.prisma
```

Create a `.env` file (or copy the example):

```
DATABASE_URL="postgresql://mageknight_user:test@localhost:5432/mageknight_db"
PORT=3000
```

## Running

Two terminals — the Express API and the Vite dev server run separately so Vite
can provide hot module replacement while the server handles API calls.

```bash
# Terminal 1 — Express API on :3000
npm run dev:server

# Terminal 2 — Vite dev server on :5173 (proxies /api to :3000)
npm run dev:client
```

Open http://localhost:5173. The `/api/health` endpoint confirms the DB is
reachable and returns the miniature count.

## If the DB schema changes

```bash
npx prisma db pull      # re-introspects the live DB into schema.prisma
npx prisma generate     # regenerates the typed client
```

## Project structure

```
src/server/         Express backend
  index.ts          App entrypoint — middleware chain and server boot
  db.ts             Prisma client singleton
  middleware/       logger.ts, errorHandler.ts
  routes/           One file per domain (added in Phase 2+)
src/client/
  components/       Shared UI components (mini-card.ts — used by all pages)
  pages/            Per-page TypeScript entry points
  styles/           CSS split by scope: main.css, mini-card.css, browse.css
prisma/
  schema.prisma     Auto-generated from DB — do not hand-edit
public/
  images/           Miniature images served as static files
docs/
  plan.md           Rewrite plan with phase progress
  api.md            API reference
```

## Docs

See [`docs/plan.md`](docs/plan.md) for the full rewrite plan and phase progress.
See [`docs/api.md`](docs/api.md) for the API reference.
