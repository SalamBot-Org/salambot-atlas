# Configuration ESLint et Prettier - SalamBot Atlas

## Vue d'ensemble

Ce document décrit la configuration ESLint et Prettier mise en place pour assurer la cohérence du code dans le projet SalamBot Atlas.

## Prettier - Formatage automatique du code

### Configuration (`.prettierrc`)

```json
{
  "semi": true,
  "trailingComma": "es5",
  "singleQuote": true,
  "printWidth": 80,
  "tabWidth": 2,
  "useTabs": false,
  "quoteProps": "as-needed",
  "jsxSingleQuote": true,
  "bracketSpacing": true,
  "bracketSameLine": false,
  "arrowParens": "avoid",
  "endOfLine": "lf",
  "embeddedLanguageFormatting": "auto",
  "htmlWhitespaceSensitivity": "css",
  "insertPragma": false,
  "proseWrap": "preserve",
  "requirePragma": false
}
```

### Fichiers ignorés (`.prettierignore`)

- Dossiers de build (`/dist`, `/build`, `/out`)
- Dépendances (`/node_modules`, fichiers de lock)
- Fichiers de couverture et tests (`/coverage`, `/test-output`)
- Cache Nx (`/.nx/cache`, `/.nx/workspace-data`)
- Fichiers générés (`**/*.d.ts`, `**/*.min.js`, `**/*.min.css`)
- Logs et fichiers temporaires
- Fichiers IDE et OS
- Documentation spécifique (`CHANGELOG.md`, `LICENSE`)
- Fichiers de configuration avec formatage spécifique

## ESLint - Analyse statique du code

### Configuration principale (`eslint.config.mjs`)

La configuration ESLint utilise le nouveau format "flat config" d'ESLint 9 et s'appuie sur les configurations Nx :

- **Base** : `@nx/eslint-plugin` avec configurations flat
- **TypeScript** : Règles spécifiques pour TypeScript
- **JavaScript** : Règles pour JavaScript/JSX

### Règles principales

#### Qualité du code

- `no-console`: 'warn' - Avertissement pour les console.log
- `no-debugger`: 'error' - Erreur pour les debugger
- `no-var`: 'error' - Interdiction de var, utiliser let/const
- `prefer-const`: 'error' - Préférer const quand possible
- `eqeqeq`: 'error' - Utiliser === au lieu de ==
- `curly`: 'error' - Accolades obligatoires

#### TypeScript spécifique

- `@typescript-eslint/no-unused-vars`: 'error' - Variables non utilisées
- `@typescript-eslint/no-explicit-any`: 'warn' - Avertissement pour any
- `@typescript-eslint/prefer-const`: 'error' - Préférer const
- `@typescript-eslint/no-var-requires`: 'error' - Pas de require() en TS
- `@typescript-eslint/explicit-function-return-type`: 'off' - Types de retour optionnels
- `@typescript-eslint/no-empty-function`: 'warn' - Fonctions vides

#### Nx module boundaries

- Contrôle des dépendances entre modules
- Respect de l'architecture modulaire

### Configuration React (`apps/salambot-atlas/eslint.config.mjs`)

Configuration spécifique pour l'application React :

#### Règles React

- `react/jsx-uses-react`: 'off' - Pas besoin avec React 17+
- `react/react-in-jsx-scope`: 'off' - Pas besoin avec React 17+
- `react/jsx-key`: 'error' - Clés obligatoires dans les listes
- `react/jsx-no-duplicate-props`: 'error' - Pas de props dupliquées
- `react/prop-types`: 'off' - Utilisation de TypeScript

#### Règles React Hooks

- `react-hooks/rules-of-hooks`: 'error' - Respect des règles des hooks
- `react-hooks/exhaustive-deps`: 'warn' - Dépendances complètes

#### Accessibilité (jsx-a11y)

- `jsx-a11y/alt-text`: 'error' - Texte alternatif obligatoire
- `jsx-a11y/anchor-is-valid`: 'error' - Liens valides
- `jsx-a11y/aria-props`: 'error' - Propriétés ARIA valides
- `jsx-a11y/heading-has-content`: 'error' - Titres avec contenu
- `jsx-a11y/html-has-lang`: 'error' - Attribut lang sur html

## Scripts disponibles

### Linting

```bash
# Linter tout le projet
pnpm run lint

# Linter avec correction automatique
pnpm run lint:fix

# Linter uniquement l'application
pnpm run lint:app
pnpm run lint:app:fix

# Linter TypeScript uniquement
pnpm run lint:ts
```

### Formatage

```bash
# Formater tout le projet
pnpm run format

# Vérifier le formatage
pnpm run format:check

# Formater uniquement l'application
pnpm run format:app
```

### Qualité du code

```bash
# Vérification complète (lint + format + types)
pnpm run code-quality

# Correction automatique complète
pnpm run code-quality:fix

# Script de pré-commit
pnpm run pre-commit
```

## Intégration IDE

### VS Code

Extensions recommandées :

- ESLint
- Prettier - Code formatter
- TypeScript and JavaScript Language Features

Configuration workspace (`.vscode/settings.json`) :

```json
{
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "esbenp.prettier-vscode",
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  },
  "eslint.validate": [
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact"
  ]
}
```

## Workflow de développement

### Avant commit

1. `pnpm run code-quality:fix` - Correction automatique
2. `pnpm run type-check:all` - Vérification TypeScript
3. Commit des changements

### Intégration continue

- Vérification du formatage : `pnpm run format:check`
- Linting : `pnpm run lint`
- Vérification des types : `pnpm run type-check:all`

## Résolution des problèmes

### Prettier

- ✅ **Statut** : Fonctionnel
- **Test** : `pnpm run format:check`
- **Correction** : `pnpm run format`

### ESLint

- ✅ **Statut** : Configuration fonctionnelle avec ESLint 9.x flat config
- **Test** : `pnpm run lint`
- **Alternative** : Utiliser Nx directement : `pnpm exec nx lint salambot-atlas`

### Erreurs communes

#### "Cannot find package '@eslint/eslintrc'"

```bash
pnpm add -D @eslint/eslintrc
```

#### Conflits Prettier/ESLint

- Prettier gère le formatage
- ESLint gère la logique et la qualité
- Configuration `eslint-config-prettier` désactive les règles conflictuelles
- Utiliser `pnpm run code-quality:fix` pour corriger les deux

#### Problèmes CommonJS vs ESM

- Configuration inclut la gestion appropriée des fichiers CommonJS et ESM
- Les fichiers Jest et autres configs sont traités comme CommonJS avec les globals appropriés

### Problèmes résolus avec succès

- ✅ Compatibilité ESLint 9.x flat config
- ✅ Intégration workspace Nx
- ✅ Support React et TypeScript
- ✅ Gestion des fichiers CommonJS (jest.preset.js, etc.)
- ✅ Intégration Prettier sans conflits

## Métriques de qualité

### Objectifs

- 0 erreur ESLint en production
- 100% formatage Prettier
- 0 warning TypeScript
- Couverture des règles d'accessibilité

### Surveillance

- Scripts de vérification dans CI/CD
- Hooks de pré-commit
- Métriques de qualité dans les rapports

## Maintenance

### Mise à jour des règles

1. Modifier `eslint.config.mjs`
2. Tester : `pnpm run lint`
3. Documenter les changements
4. Communiquer à l'équipe

### Mise à jour des dépendances

```bash
# ESLint et plugins
pnpm update eslint @nx/eslint-plugin eslint-plugin-react eslint-plugin-react-hooks eslint-plugin-jsx-a11y

# Prettier
pnpm update prettier

# TypeScript ESLint
pnpm update @typescript-eslint/eslint-plugin @typescript-eslint/parser
```

## Bonnes pratiques

### Code TypeScript/React

1. Utiliser des noms de variables descriptifs
2. Préférer const à let, éviter var
3. Typer explicitement les interfaces publiques
4. Utiliser les hooks React correctement
5. Respecter les règles d'accessibilité

### Organisation des imports

1. Modules Node.js built-in
2. Modules externes (npm)
3. Modules internes du projet
4. Imports relatifs

### Gestion des erreurs

1. Pas de console.log en production
2. Gestion explicite des erreurs
3. Types stricts pour les APIs

Cette configuration assure une base solide pour la qualité et la cohérence du code dans le projet SalamBot Atlas.
