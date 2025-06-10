import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import { nxViteTsPaths } from '@nx/vite/plugins/nx-tsconfig-paths.plugin';

export default defineConfig(() => ({
  root: __dirname,
  cacheDir: '../../node_modules/.vite/apps/salamwidget',

  plugins: [react(), nxViteTsPaths()],

  // Configuration Vitest pour Next.js/React
  test: {
    environment: 'jsdom',
    globals: true,
    setupFiles: ['../../src/test-setup.ts'],
    include: [
      '{src,tests,specs}/**/*.{test,spec}.{js,mjs,cjs,ts,mts,cts,jsx,tsx}',
    ],
    reporters: ['default'],
    coverage: {
      reportsDirectory: '../../coverage/apps/salamwidget',
      provider: 'v8' as const,
    },
  },

  build: {
    outDir: '../../dist/apps/salamwidget',
    emptyOutDir: true,
    reportCompressedSize: true,
    lib: {
      entry: 'src/app/page.tsx',
      name: 'salamwidget',
      fileName: 'salamwidget',
    },
    commonjsOptions: {
      transformMixedEsModules: true,
    },
  },
}));
