import { Router } from 'express';
import db from '../db';

const router = Router();

const VALID_CATEGORIES = ['high', 'medium', 'low', 'neutral', 'negative'] as const;
type Category = (typeof VALID_CATEGORIES)[number];

// ---------------------------------------------------------------------------
// GET /api/abilities
// Returns all abilities ordered by name, with id, name, color, weight_category
// ---------------------------------------------------------------------------
router.get('/', async (_req, res, next) => {
  try {
    const abilities = await db.abilities.findMany({
      orderBy: { name: 'asc' },
      select: { id: true, name: true, color: true, weight_category: true },
    });
    res.json(abilities);
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// PUT /api/abilities/:id
// Updates the weight_category for a single ability.
// Body: { weight_category: 'high' | 'medium' | 'low' | 'neutral' | 'negative' }
// ---------------------------------------------------------------------------
router.put('/:id', async (req, res, next) => {
  try {
    const id = Number(req.params.id);
    if (isNaN(id)) {
      res.status(400).json({ error: 'Invalid ability id' });
      return;
    }

    const { weight_category } = req.body as { weight_category: string };
    if (!VALID_CATEGORIES.includes(weight_category as Category)) {
      res.status(400).json({ error: `weight_category must be one of: ${VALID_CATEGORIES.join(', ')}` });
      return;
    }

    const updated = await db.abilities.update({
      where: { id },
      data: { weight_category },
      select: { id: true, name: true, color: true, weight_category: true },
    });

    res.json(updated);
  } catch (err) {
    next(err);
  }
});

export default router;
