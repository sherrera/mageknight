import { Router } from 'express';
import { computeScores } from '../lib/scores';

const router = Router();

// ---------------------------------------------------------------------------
// POST /api/minis/metrics/regenerate
//
// Recomputes peak_score, sustained_score, and overall_score for every mini
// that has click stats and a point cost. Also seeds ability weight categories
// on first run.
//
// In production this endpoint should be protected. A simple shared secret
// approach: set METRICS_SECRET in the environment and pass it as
// X-Metrics-Secret header. If the env var is not set the endpoint is open
// (dev / localhost convenience).
// ---------------------------------------------------------------------------
router.post('/regenerate', async (req, res, next) => {
  try {
    const secret = process.env.METRICS_SECRET;
    if (secret) {
      const provided = req.headers['x-metrics-secret'];
      if (provided !== secret) {
        res.status(401).json({ error: 'Unauthorized' });
        return;
      }
    }

    const result = await computeScores();
    res.json({ ok: true, updated: result.updated });
  } catch (err) {
    next(err);
  }
});

export default router;
