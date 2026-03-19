import { PrismaClient } from '@prisma/client';

/**
 * Singleton Prisma client. A single instance is correct here because Prisma
 * manages its own internal connection pool — creating multiple PrismaClient
 * instances would open redundant pools and waste connections.
 */
const db = new PrismaClient();

export default db;
