import { defineConfig } from 'vite';
import { resolve } from 'path';

export default defineConfig({
  // Vite's root is src/client so all client paths are relative to it
  root: 'src/client',
  build: {
    outDir: '../../dist/client',
    emptyOutDir: true,
    rollupOptions: {
      // Multi-page app: each page is a separate entry. Add new pages here as phases progress.
      input: {
        browse:     resolve(__dirname, 'src/client/index.html'),
        collection: resolve(__dirname, 'src/client/collection.html'),
        armies:     resolve(__dirname, 'src/client/armies.html'),
        army:       resolve(__dirname, 'src/client/army.html'),
        abilities:  resolve(__dirname, 'src/client/abilities.html'),
      },
    },
  },
  server: {
    port: 5173,
    proxy: {
      // Forward all API and image requests to the Express server in dev
      '/api': 'http://localhost:3000',
      '/images': 'http://localhost:3000',
    },
  },
});
