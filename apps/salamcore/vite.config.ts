import { defineConfig } from 'vite';
import { nxViteTsPaths } from '@nx/vite/plugins/nx-tsconfig-paths.plugin';

export default defineConfig(() => ({
  root: __dirname,
  cacheDir: '../../node_modules/.vite/apps/salamcore',
  
  plugins: [nxViteTsPaths()],
  
  // Configuration Vitest pour Node.js backend
  test: {
    environment: 'node',
    globals: true,
    setupFiles: ['../../src/test-setup.ts'],
    include: ['{src,tests}/**/*.{test,spec}.{js,mjs,cjs,ts,mts,cts,jsx,tsx}'],
    reporters: ['default'],
    coverage: {
      reportsDirectory: '../../coverage/apps/salamcore',
      provider: 'v8' as const,
    },
  },
  
  build: {
    outDir: '../../dist/apps/salamcore',
    emptyOutDir: true,
    reportCompressedSize: true,
    lib: {
      entry: 'src/main.ts',
      name: 'salamcore',
      fileName: 'salamcore',
    },
    commonjsOptions: {
      transformMixedEsModules: true,
    },
  },
}));