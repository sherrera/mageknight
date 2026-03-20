import express from 'express';
import path from 'path';
import { logger } from './middleware/logger';
import { errorHandler } from './middleware/errorHandler';
import db from './db';
import minisRouter from './routes/minis';
import collectionRouter from './routes/collection';
import armiesRouter from './routes/armies';
import metricsRouter from './routes/metrics';
import abilitiesRouter from './routes/abilities';

const app = express();
const PORT = process.env.PORT ?? 3000;

// Parse JSON request bodies
app.use(express.json());

// Log all requests
app.use(logger);

// Serve images and the built Vite client. Images are in public/images/ and
// the Vite build output lands in dist/client/ — both served as static.
// 30-day cache for images; versioned JS/CSS assets get 1 year.
app.use(express.static(path.join(process.cwd(), 'public'), { maxAge: '30d' }));
app.use(express.static(path.join(process.cwd(), 'dist/client'), { maxAge: '1y' }));

const PUBLIC_MODE = process.env.PUBLIC_MODE === 'true';

// In public mode: block all writes and hide army/abilities APIs.
if (PUBLIC_MODE) {
  app.use((req, res, next) => {
    if (req.method !== 'GET' && req.method !== 'HEAD') {
      res.status(403).json({ error: 'Read-only mode' });
      return;
    }
    next();
  });
  app.use(['/api/armies', '/api/abilities'], (_req, res) => {
    res.status(403).json({ error: 'Not available in public mode' });
  });
}

// Exposes server-side feature flags to the client at runtime.
app.get('/api/config', (_req, res) => {
  res.json({ publicMode: PUBLIC_MODE });
});

// Mount routers — each file owns one domain of the API
app.use('/api/minis', minisRouter);
app.use('/api/minis/metrics', metricsRouter);
app.use('/api/collection', collectionRouter);
app.use('/api/armies', armiesRouter);
app.use('/api/abilities', abilitiesRouter);

/**
 * Health check — verifies the server is up and the DB is reachable.
 * Useful as a quick sanity check after starting the server.
 */
app.get('/api/health', async (_req, res, next) => {
  try {
    const count = await db.miniatures.count();
    res.json({ status: 'ok', miniatures: count });
  } catch (err) {
    next(err);
  }
});

// Error handler must be registered last — Express uses the 4-arg signature
// to distinguish it from regular middleware
app.use(errorHandler);

app.listen(PORT, () => {
  console.log(`Server running at http://localhost:${PORT}`);
});
