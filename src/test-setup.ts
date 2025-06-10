import '@testing-library/jest-dom';
import { vi } from 'vitest';

// Configuration globale pour les tests
global.ResizeObserver = vi.fn().mockImplementation(() => ({
  observe: vi.fn(),
  unobserve: vi.fn(),
  disconnect: vi.fn(),
}));

// Mock pour window.matchMedia
Object.defineProperty(window, 'matchMedia', {
  writable: true,
  value: vi.fn().mockImplementation(query => ({
    matches: false,
    media: query,
    onchange: null,
    addListener: vi.fn(), // deprecated
    removeListener: vi.fn(), // deprecated
    addEventListener: vi.fn(),
    removeEventListener: vi.fn(),
    dispatchEvent: vi.fn(),
  })),
});

// Mock pour IntersectionObserver
global.IntersectionObserver = vi.fn().mockImplementation(() => ({
  observe: vi.fn(),
  unobserve: vi.fn(),
  disconnect: vi.fn(),
}));

// Mock pour fetch si nécessaire
if (!global.fetch) {
  global.fetch = vi.fn();
}

// Configuration pour les variables d'environnement de test
process.env.NODE_ENV = 'test';
process.env.VITE_API_URL = 'http://localhost:3000/api';
process.env.VITE_APP_NAME = 'SalamBot Atlas Test';

// Suppression des logs en mode test (optionnel)
if (process.env.NODE_ENV === 'test') {
  global.console = {
    ...console,
    log: vi.fn(),
    debug: vi.fn(),
    info: vi.fn(),
    warn: vi.fn(),
    error: vi.fn(),
  };
}

// Configuration pour les timeouts
vi.setConfig({
  testTimeout: 10000,
  hookTimeout: 10000,
});

// Nettoyage après chaque test
afterEach(() => {
  vi.clearAllMocks();
  vi.clearAllTimers();
});

// Configuration pour les modules externes
vi.mock('react-router-dom', async () => {
  const actual = await vi.importActual('react-router-dom');
  return {
    ...actual,
    useNavigate: () => vi.fn(),
    useLocation: () => ({ pathname: '/' }),
    useParams: () => ({}),
  };
});

// Mock pour les APIs externes si nécessaire
vi.mock('@google-cloud/firestore', () => ({
  Firestore: vi.fn(),
  FieldValue: {
    serverTimestamp: vi.fn(),
    increment: vi.fn(),
    arrayUnion: vi.fn(),
    arrayRemove: vi.fn(),
  },
}));

vi.mock('ioredis', () => {
  return {
    default: vi.fn().mockImplementation(() => ({
      get: vi.fn(),
      set: vi.fn(),
      del: vi.fn(),
      exists: vi.fn(),
      expire: vi.fn(),
      disconnect: vi.fn(),
    })),
  };
});
