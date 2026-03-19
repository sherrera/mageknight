import { Router } from 'express';
import db from '../db';
import { MINIATURE_INCLUDE, formatMiniature } from '../lib/miniature-format';

const router = Router();

// ---------------------------------------------------------------------------
// GET /api/collection
// Returns all collection items with full miniature data, sorted by mini name.
// ---------------------------------------------------------------------------
router.get('/', async (_req, res, next) => {
  try {
    const items = await db.collection_items.findMany({
      orderBy: { miniatures: { name: 'asc' } },
      include: { miniatures: { include: MINIATURE_INCLUDE } },
    });

    res.json(items.map((item) => ({
      quantity: item.quantity,
      miniature: formatMiniature(item.miniatures as Parameters<typeof formatMiniature>[0]),
    })));
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// GET /api/collection/transactions
// Returns all transaction log entries, newest first.
// Must be registered before /:miniatureId so Express doesn't treat
// "transactions" as a miniature id.
// ---------------------------------------------------------------------------
router.get('/transactions', async (_req, res, next) => {
  try {
    const rows = await db.collection_transactions.findMany({
      orderBy: { created_at: 'desc' },
      include: { miniatures: { select: { name: true } } },
    });

    res.json(rows.map((r) => ({
      id:            r.id,
      timestamp:     r.created_at.toISOString(),
      action:        r.action,
      miniatureId:   r.miniature_id,
      miniatureName: r.miniatures.name ?? String(r.miniature_id),
      newQty:        r.new_qty,
      prevQty:       r.prev_qty,
    })));
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// DELETE /api/collection/transactions
// Clears the entire transaction log.
// ---------------------------------------------------------------------------
router.delete('/transactions', async (_req, res, next) => {
  try {
    await db.collection_transactions.deleteMany({});
    res.status(204).send();
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// POST /api/collection
// Adds a mini to the collection. Idempotent: if the mini is already present,
// increments quantity by 1 rather than creating a duplicate entry.
// The mutation and the transaction log entry are written atomically so the
// log only ever reflects changes that actually landed in the DB.
// Body: { miniature_id: number }
// ---------------------------------------------------------------------------
router.post('/', async (req, res, next) => {
  try {
    const { miniature_id } = req.body as { miniature_id: number };
    if (!miniature_id) {
      res.status(400).json({ error: 'miniature_id is required' });
      return;
    }

    const existing = await db.collection_items.findFirst({ where: { miniature_id } });
    const prevQty  = existing?.quantity ?? 0;
    const newQty   = prevQty + 1;
    const action   = existing ? 'increment' : 'add';

    const [item] = await db.$transaction([
      existing
        ? db.collection_items.update({
            where: { id: existing.id },
            data:  { quantity: newQty },
            include: { miniatures: { include: MINIATURE_INCLUDE } },
          })
        : db.collection_items.create({
            data:    { miniature_id, quantity: 1 },
            include: { miniatures: { include: MINIATURE_INCLUDE } },
          }),
      db.collection_transactions.create({
        data: { action, miniature_id, new_qty: newQty, prev_qty: prevQty },
      }),
    ]);

    res.status(existing ? 200 : 201).json({
      quantity:  item.quantity,
      miniature: formatMiniature(item.miniatures as Parameters<typeof formatMiniature>[0]),
    });
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// PUT /api/collection/:miniatureId
// Sets quantity directly. Used by the +/- controls on the collection page.
// Derives the action label from the delta so the log matches what the user
// did rather than always saying "set".
// Body: { quantity: number }
// ---------------------------------------------------------------------------
router.put('/:miniatureId', async (req, res, next) => {
  try {
    const miniature_id = Number(req.params.miniatureId);
    const { quantity } = req.body as { quantity: number };

    if (isNaN(miniature_id)) {
      res.status(400).json({ error: 'Invalid miniature_id' });
      return;
    }
    if (typeof quantity !== 'number' || quantity < 1) {
      res.status(400).json({ error: 'quantity must be a number >= 1' });
      return;
    }

    const existing = await db.collection_items.findFirst({ where: { miniature_id } });
    if (!existing) {
      res.status(404).json({ error: 'Mini not in collection' });
      return;
    }

    const prevQty = existing.quantity;
    const delta   = quantity - prevQty;
    const action  = delta === 1 ? 'increment' : delta === -1 ? 'decrement' : 'set';

    const [item] = await db.$transaction([
      db.collection_items.update({
        where:   { id: existing.id },
        data:    { quantity },
        include: { miniatures: { include: MINIATURE_INCLUDE } },
      }),
      db.collection_transactions.create({
        data: { action, miniature_id, new_qty: quantity, prev_qty: prevQty },
      }),
    ]);

    res.json({
      quantity:  item.quantity,
      miniature: formatMiniature(item.miniatures as Parameters<typeof formatMiniature>[0]),
    });
  } catch (err) {
    next(err);
  }
});

// ---------------------------------------------------------------------------
// DELETE /api/collection/:miniatureId
// ---------------------------------------------------------------------------
router.delete('/:miniatureId', async (req, res, next) => {
  try {
    const miniature_id = Number(req.params.miniatureId);
    if (isNaN(miniature_id)) {
      res.status(400).json({ error: 'Invalid miniature_id' });
      return;
    }

    const existing = await db.collection_items.findFirst({ where: { miniature_id } });
    if (!existing) {
      res.status(404).json({ error: 'Mini not in collection' });
      return;
    }

    await db.$transaction([
      db.collection_items.delete({ where: { id: existing.id } }),
      db.collection_transactions.create({
        data: { action: 'remove', miniature_id, new_qty: 0, prev_qty: existing.quantity },
      }),
    ]);

    res.status(204).send();
  } catch (err) {
    next(err);
  }
});

export default router;
