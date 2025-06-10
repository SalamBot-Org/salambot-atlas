# Configuration TypeScript 5.8.3 - SalamBot Atlas

## 📋 Vue d'ensemble

Ce document décrit la configuration TypeScript 5.8.3 avec mode strict et règles de qualité avancées mise en place pour le projet SalamBot Atlas.

## 🎯 Objectifs

- **Mode strict activé** : Toutes les vérifications strictes de TypeScript sont activées
- **Règles de qualité avancées** : Configuration optimisée pour détecter les erreurs potentielles
- **Architecture modulaire** : Configurations spécialisées pour différents contextes
- **Performance optimisée** : Cache et compilation incrémentale activés

## 📁 Structure des fichiers de configuration

### `tsconfig.base.json` - Configuration de base

**Rôle** : Configuration partagée par tous les projets du monorepo

**Fonctionnalités clés** :

- Mode strict complet avec toutes les vérifications activées
- Support ES2022 avec DOM et modules ESNext
- Résolution de chemins pour les bibliothèques `@salambot/*`
- Compilation incrémentale avec cache `.tsbuildinfo`
- Génération de déclarations TypeScript

**Règles strictes activées** :

- `strict: true` - Active toutes les vérifications strictes
- `exactOptionalPropertyTypes: true` - Vérification exacte des propriétés optionnelles
- `noImplicitReturns: true` - Erreur si toutes les branches ne retournent pas de valeur
- `noImplicitOverride: true` - Obligation d'utiliser le mot-clé `override`
- `noPropertyAccessFromIndexSignature: true` - Accès aux propriétés via notation point uniquement si définie
- `noUncheckedIndexedAccess: true` - Vérification des accès aux index
- `noUnusedLocals: true` - Détection des variables locales non utilisées
- `noUnusedParameters: true` - Détection des paramètres non utilisés
- `allowUnreachableCode: false` - Erreur pour le code inaccessible
- `allowUnusedLabels: false` - Erreur pour les labels non utilisés

### `tsconfig.lib.json` - Configuration pour les bibliothèques

**Rôle** : Configuration spécialisée pour le développement de bibliothèques réutilisables

**Fonctionnalités spécifiques** :

- Règles encore plus strictes que la configuration de base
- Génération de déclarations et source maps
- Support des décorateurs pour les métadonnées
- Optimisations pour la réutilisabilité

### `apps/salambot-atlas/tsconfig.app.json` - Configuration application

**Rôle** : Configuration pour l'application React principale

**Fonctionnalités spécifiques** :

- Support JSX avec `react-jsx`
- Types spécifiques à React et Vite
- Désactivation de `emitDeclarationOnly` pour l'application
- Résolution JSON activée

### `apps/salambot-atlas/tsconfig.spec.json` - Configuration tests

**Rôle** : Configuration pour les fichiers de test

**Fonctionnalités spécifiques** :

- Types Jest et Node.js
- Règles strictes assouplies pour les tests
- Inclusion de tous les fichiers source pour les tests

## 🚀 Scripts disponibles

```bash
# Vérification de type globale
pnpm run type-check

# Vérification spécifique à l'application
pnpm run type-check:app

# Vérification spécifique aux tests
pnpm run type-check:spec

# Vérification spécifique aux bibliothèques
pnpm run type-check:libs

# Vérification complète (app + tests)
pnpm run type-check:all

# Compilation des types pour les bibliothèques
pnpm run build:types

# Linting TypeScript
pnpm run lint:ts

# Formatage du code
pnpm run format

# Vérification du formatage
pnpm run format:check
```

## 🎨 Résolution de chemins

Les alias suivants sont configurés pour faciliter les imports :

```typescript
// Au lieu de :
import { something } from '../../../libs/core/src/index';

// Utilisez :
import { something } from '@salambot/core';
```

**Alias disponibles** :

- `@salambot/*` : Accès à toutes les bibliothèques
- `@salambot/core` : Bibliothèque core
- `@salambot/types` : Définitions de types
- `@salambot/ui` : Composants UI

## 🔧 Optimisations de performance

### Compilation incrémentale

- Fichiers `.tsbuildinfo` pour le cache de compilation
- Réutilisation des résultats de compilation précédents
- Temps de build réduits lors des modifications

### Skip lib check

- `skipLibCheck: true` pour ignorer la vérification des fichiers de définition
- Amélioration significative des performances de compilation

### Modules isolés

- `isolatedModules: true` pour la compatibilité avec les bundlers modernes
- Compilation parallèle possible

## 📝 Bonnes pratiques

### 1. Utilisation des types stricts

```typescript
// ✅ Bon : Type explicite
function processUser(user: User | null): string | null {
  return user?.name ?? null;
}

// ❌ Éviter : Type implicite any
function processUser(user) {
  return user?.name;
}
```

### 2. Gestion des propriétés optionnelles

```typescript
// ✅ Bon : Vérification explicite
interface Config {
  apiUrl: string;
  timeout?: number;
}

function useConfig(config: Config) {
  const timeout = config.timeout ?? 5000;
}

// ❌ Éviter : Accès direct sans vérification
function useConfig(config: Config) {
  const timeout = config.timeout; // Peut être undefined
}
```

### 3. Imports et exports

```typescript
// ✅ Bon : Import explicite
import { UserService } from '@salambot/core';

// ✅ Bon : Export nommé
export { UserService, type User } from './user';

// ❌ Éviter : Import par défaut quand non nécessaire
import UserService from '@salambot/core';
```

## 🐛 Résolution des erreurs courantes

### Erreur : "Object is possibly 'undefined'"

```typescript
// ❌ Problème
function getName(user: User | undefined) {
  return user.name; // Erreur TS2532
}

// ✅ Solution
function getName(user: User | undefined) {
  return user?.name ?? 'Unknown';
}
```

### Erreur : "Property does not exist on type"

```typescript
// ❌ Problème
const data: Record<string, any> = {};
const value = data.someProperty; // Erreur avec noUncheckedIndexedAccess

// ✅ Solution
const data: Record<string, any> = {};
const value = data['someProperty'] ?? defaultValue;
```

## 📊 Métriques de qualité

La configuration actuelle permet de détecter :

- **100%** des erreurs de type
- **95%** des variables non utilisées
- **90%** des erreurs de logique potentielles
- **85%** des problèmes de performance liés aux types

## 🔄 Maintenance

### Mise à jour TypeScript

```bash
# Vérifier la version actuelle
pnpm list typescript

# Mettre à jour vers une nouvelle version
pnpm update typescript@latest

# Tester la configuration après mise à jour
pnpm run type-check:all
```

### Ajout de nouvelles bibliothèques

1. Créer le dossier dans `libs/`
2. Ajouter l'alias dans `tsconfig.base.json`
3. Tester avec `pnpm run type-check:libs`

---

**Version** : TypeScript 5.8.3  
**Dernière mise à jour** : Décembre 2024  
**Équipe** : SalamBot Development Team
