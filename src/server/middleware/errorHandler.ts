import type { Request, Response, NextFunction } from 'express';

/**
 * Catches any error thrown (or passed to next()) in a route handler and returns
 * a consistent JSON error shape instead of crashing the process or sending an
 * HTML error page. Must be registered LAST in the middleware chain — Express
 * identifies error-handling middleware by its 4-argument signature.
 */
export function errorHandler(
  err: unknown,
  req: Request,
  res: Response,
  // next is required by Express's error-handler signature even if unused
  // eslint-disable-next-line @typescript-eslint/no-unused-vars
  next: NextFunction,
): void {
  const message = err instanceof Error ? err.message : 'Internal server error';
  console.error(err);
  res.status(500).json({ error: message });
}
