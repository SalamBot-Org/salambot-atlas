# 📚 Guide d'Utilisation Claude 4 - SalamBot

**📅 Version:** 3.0 - Optimisé Claude 4  
**📅 Date:** 9 juin 2025  
**👥 Équipe:** SalamBot Team  
**🎯 Objectif:** Instructions d'utilisation optimales pour Claude 4

---

## 🎯 **Instructions pour Claude 4**

Voici l'écosystème documentaire complet créé spécialement pour toi, Claude 4, afin de maximiser ton efficacité dans le développement de SalamBot. Ces documents constituent ta base de connaissance fondamentale.

### 📋 **Documents Fournis**

**1. 🚀 STARTER_PACK_CLAUDE4.md (50+ pages)**

- **Usage :** Consulte ce document en PREMIER pour comprendre l'architecture et la vision globale
- **Contenu :** Architecture technique, stack technologique, applications principales, bibliothèques fondamentales
- **Quand l'utiliser :** Au début de chaque session, pour les décisions d'architecture, pour comprendre les dépendances

**2. 📋 PROJECT_GUIDELINES_CLAUDE4.md (60+ pages)**

- **Usage :** Référence OBLIGATOIRE pour tous les standards et conventions
- **Contenu :** Directives de développement, standards de qualité, workflow Git, sécurité, conformité
- **Quand l'utiliser :** Avant chaque implémentation, pour les revues de code, pour les décisions techniques

**3. ✅ TODO_COMPLET_CLAUDE4.md (80+ pages)**

- **Usage :** Feuille de route EXHAUSTIVE avec 200+ tâches détaillées
- **Contenu :** 5 phases de développement, tâches ordonnées, dépendances, critères de validation
- **Quand l'utiliser :** Pour planifier le travail, prioriser les tâches, valider les étapes

### 🔄 **Workflow Recommandé**

**Étape 1 : Initialisation Session**

1. Lis le STARTER_PACK pour te remettre en contexte
2. Consulte les PROJECT_GUIDELINES pour les standards actuels
3. Identifie la phase actuelle dans le TODO_COMPLET

**Étape 2 : Planification Tâche**

1. Localise la tâche dans le TODO_COMPLET
2. Vérifie les dépendances et prérequis
3. Consulte les guidelines pour les standards applicables

**Étape 3 : Implémentation**

1. Respecte scrupuleusement les conventions des PROJECT_GUIDELINES
2. Utilise les exemples et patterns du STARTER_PACK
3. Marque la tâche comme terminée dans le TODO

**Étape 4 : Validation**

1. Vérifie la conformité avec les PROJECT_GUIDELINES
2. Teste selon les critères du TODO_COMPLET
3. Documente selon les standards du STARTER_PACK

### 🎯 **Priorités Absolues**

**1. Respect des Standards**

- Tous les fichiers DOIVENT avoir l'en-tête standardisé
- Toute logique IA DOIT utiliser Genkit v1.x
- Tous les tests DOIVENT atteindre les seuils de précision

**2. Architecture Monorepo**

- JAMAIS créer de projets externes à `salambot-atlas/`
- TOUJOURS utiliser les alias Nx pour les imports
- RESPECTER la structure `apps/` et `libs/`

**3. Qualité et Performance**

- Détection Darija >88% précision OBLIGATOIRE
- Temps de réponse <200ms P95 REQUIS
- Couverture tests >85% MINIMALE

### 📊 **Métriques de Succès**

Utilise ces métriques pour valider ton travail :

**Techniques :**

- ✅ Précision détection Darija >88%
- ✅ Temps réponse API <200ms P95
- ✅ Couverture tests >85%
- ✅ Zero erreurs ESLint/TypeScript

**Qualité :**

- ✅ Tous les fichiers ont l'en-tête standardisé
- ✅ Documentation README dans chaque module
- ✅ Diagrammes Mermaid pour les bibliothèques
- ✅ Tests automatisés pour chaque fonctionnalité

**Architecture :**

- ✅ Respect structure monorepo Nx
- ✅ Utilisation exclusive Genkit pour l'IA
- ✅ Fallback offline implémenté
- ✅ Observabilité OpenTelemetry active

### 🚨 **Erreurs à Éviter Absolument**

**1. Structure Projet**

- ❌ Créer des dossiers hors de `salambot-atlas/`
- ❌ Utiliser npm ou yarn au lieu de pnpm
- ❌ Ignorer les alias Nx dans les imports

**2. Standards Code**

- ❌ Omettre l'en-tête standardisé dans les fichiers
- ❌ Utiliser `any` en TypeScript
- ❌ Appeler directement les APIs LLM sans Genkit

**3. Tests et Qualité**

- ❌ Déployer sans atteindre les seuils de précision
- ❌ Ignorer les warnings ESLint
- ❌ Omettre la documentation README

### 🎯 **Prochaines Étapes**

1. **Familiarise-toi** avec les trois documents
2. **Identifie** la phase actuelle dans le TODO_COMPLET
3. **Commence** par les tâches de la Phase 0 si le projet n'est pas initialisé
4. **Respecte** scrupuleusement l'ordre des tâches et leurs dépendances
5. **Valide** chaque étape selon les critères définis

---

**Tu as maintenant tous les outils pour révolutionner l'IA conversationnelle au Maroc avec SalamBot ! 🇲🇦🚀**
