/// <reference types="vitest" />
import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
import { nxViteTsPaths } from '@nx/vite/plugins/nx-tsconfig-paths.plugin';

export default defineConfig({
  root: __dirname,
  cacheDir: './node_modules/.vite/salambot-atlas',

  plugins: [react(), nxViteTsPaths()],

  // Configuration Vitest
  test: {
    // Configuration des projets (remplace workspace file déprécié)
    projects: [
      'apps/*/vite.config.{mjs,js,ts,mts}',
      'apps/*/vitest.config.{mjs,js,ts,mts}',
      'libs/*/vite.config.{mjs,js,ts,mts}',
      'libs/*/vitest.config.{mjs,js,ts,mts}',
    ],
    // Environnement de test
    environment: 'jsdom',

    // Fichiers de setup
    setupFiles: ['./src/test-setup.ts'],

    // Patterns de fichiers de test
    include: [
      'apps/**/*.{test,spec}.{js,mjs,cjs,ts,mts,cts,jsx,tsx}',
      'libs/**/*.{test,spec}.{js,mjs,cjs,ts,mts,cts,jsx,tsx}',
    ],

    // Exclusions
    exclude: [
      '**/node_modules/**',
      '**/dist/**',
      '**/cypress/**',
      '**/.{idea,git,cache,output,temp}/**',
      '**/{karma,rollup,webpack,vite,vitest,jest,ava,babel,nyc,cypress,tsup,build}.config.*',
    ],

    // Configuration de la couverture de code
    coverage: {
      enabled: true,
      provider: 'v8',
      reporter: ['text', 'json', 'html', 'lcov'],
      reportsDirectory: './coverage',

      // Seuils de couverture
      thresholds: {
        global: {
          branches: 85,
          functions: 85,
          lines: 85,
          statements: 85,
        },
      },

      // Inclusions pour la couverture
      include: [
        'apps/**/src/**/*.{js,ts,jsx,tsx}',
        'libs/**/src/**/*.{js,ts,jsx,tsx}',
      ],

      // Exclusions pour la couverture
      exclude: [
        '**/*.{test,spec}.{js,ts,jsx,tsx}',
        '**/test-setup.ts',
        '**/main.ts',
        '**/main.tsx',
        '**/*.config.{js,ts}',
        '**/node_modules/**',
        '**/dist/**',
      ],
    },

    // Configuration des globals
    globals: true,

    // Timeout des tests
    testTimeout: 10000,

    // Configuration des reporters
    reporters: ['verbose', 'junit'],

    // Configuration JUnit pour CI/CD
    outputFile: {
      junit: './test-results/junit.xml',
    },

    // Configuration du cache (utilise cacheDir de Vite)
    // Note: Le cache est maintenant géré par cacheDir au niveau racine

    // Configuration des workers
    pool: 'threads',
    poolOptions: {
      threads: {
        singleThread: false,
        isolate: true,
      },
    },

    // Configuration du watch mode
    watch: false,

    // Configuration des mocks
    mockReset: true,
    clearMocks: true,
    restoreMocks: true,
  },

  // Configuration pour le build
  build: {
    target: 'esnext',
    lib: {
      entry: 'src/index.ts',
      name: 'SalamBotAtlas',
      fileName: 'salambot-atlas',
    },
  },

  // Configuration des alias
  resolve: {
    alias: {
      '@': './src',
      '@apps': './apps',
      '@libs': './libs',
    },
  },
});
