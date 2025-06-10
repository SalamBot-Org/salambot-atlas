export default {
  displayName: 'salamextension',
  preset: '../../jest.preset.js',
  setupFilesAfterEnv: ['<rootDir>/../../config/test-setup.ts'],
  transform: {
    '^.+\\.[tj]s$': '@swc/jest',
  },
  moduleFileExtensions: ['ts', 'js', 'html'],
  coverageDirectory: '../../coverage/apps/salamextension',
};
