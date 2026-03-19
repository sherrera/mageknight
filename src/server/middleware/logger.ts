import type { Request, Response, NextFunction } from 'express';

/**
 * Logs each request on completion. We log on 'finish' rather than on entry so
 * we can include the response status code, which isn't known until the handler runs.
 */
export function logger(req: Request, res: Response, next: NextFunction): void {
  const start = Date.now();

  res.on('finish', () => {
    const duration = Date.now() - start;
    console.log(`${req.method} ${req.path} ${res.statusCode} ${duration}ms`);
  });

  next();
}
