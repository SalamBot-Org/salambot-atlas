# 📋 PROJECT_GUIDELINES - Guide Claude 4 pour SalamBot

**📅 Version:** 3.0 - Optimisé Claude 4  
**📅 Date:** 9 juin 2025  
**👥 Équipe:** SalamBot Team  
**🎯 Objectif:** Directives complètes pour le développement SalamBot

---

## 🎯 **Directives Fondamentales pour Claude 4**

En tant que développeur principal de SalamBot, tu dois suivre scrupuleusement ces directives pour garantir la cohérence, la qualité, et l'efficacité du développement. Ces guidelines constituent le cadre de référence pour toutes tes décisions techniques et organisationnelles.

SalamBot n'est pas un projet ordinaire. C'est une plateforme révolutionnaire qui doit établir de nouveaux standards dans l'IA conversationnelle pour le marché marocain. Chaque ligne de code, chaque décision d'architecture, chaque choix technologique doit refléter cette ambition d'excellence.

## 🏗️ **Architecture et Structure du Projet**

### **Monorepo Nx - Règles Strictes**

Le projet SalamBot utilise exclusivement le monorepo Nx nommé `salambot-atlas`. Toutes les fonctionnalités, applications, et bibliothèques doivent être créées à l'intérieur de cette structure unifiée. Il est strictement interdit de créer des dossiers externes comme `salambot-atlas-prX-*` ou des projets séparés.

La structure organisationnelle suit une logique claire et immuable. Le dossier `apps/` contient uniquement les applications déployables : `widget-web` pour l'intégration client, `agent-desk` pour l'interface de gestion, `functions-run` pour l'API backend, `extension-chrome` pour l'intégration CRM, et `edge-flows` pour les workers Cloudflare.

Le dossier `libs/` héberge toute la logique partagée et réutilisable. Les bibliothèques principales incluent `core` pour la logique métier commune, `ai` avec ses sous-modules comme `lang-detect`, `connectors` pour les intégrations tierces, `persistence` pour la gestion des données, `types` pour les définitions TypeScript, et `ui` pour les composants d'interface.

Chaque création de module doit utiliser les générateurs Nx appropriés ou être placée manuellement dans la structure correcte. Tous les imports doivent utiliser les alias Nx configurés comme `@salambot/core` ou `@salambot/ai/lang-detect`. Cette discipline garantit la cohérence et facilite la maintenance à long terme.

### **Versions Technologiques Figées**

La stack technologique de SalamBot est figée pour garantir la stabilité et éviter les conflits de versions. **Node.js 22** constitue le runtime obligatoire pour toutes les applications backend. **Nx 21.1.2** gère l'orchestration du monorepo avec ses outils de build et de cache optimisés.

**pnpm 10.11.1** est le gestionnaire de paquets exclusif. L'utilisation de npm ou yarn est strictement interdite pour éviter les incohérences de lockfile. **Next.js 15.3.3** propulse les applications frontend avec **React 19** pour bénéficier des dernières optimisations de performance.

**TypeScript 5.8.3** assure la sécurité de type avec configuration stricte activée. Tous les fichiers doivent être typés sans utilisation d'`any`. **Genkit AI v1.x** orchestre tous les flows d'intelligence artificielle avec intégration native des providers cloud et offline.

**Kong Gateway** centralise la gestion des APIs avec authentification JWT, rate limiting, et monitoring intégré. Cette architecture garantit la scalabilité et la sécurité enterprise requises pour SalamBot.

## 🤖 **Standards d'Intelligence Artificielle**

### **Flows Genkit Obligatoires**

Toute logique d'intelligence artificielle doit impérativement utiliser Genkit v1.x. Les appels directs aux APIs des LLMs cloud (Gemini, Llama, OpenAI) sont interdits. Tous les traitements IA doivent être encapsulés dans des flows Genkit pour garantir l'observabilité, la traçabilité, et la cohérence.

Les flows principaux incluent la détection de langue avec fallback offline obligatoire, la génération de réponses conversationnelles avec adaptation culturelle marocaine, l'analyse de sentiment avec spécialisation Darija, et la recommandation de produits avec contexte e-commerce local.

Chaque flow doit implémenter une stratégie de fallback robuste. En cas d'indisponibilité du provider cloud principal, le système doit basculer automatiquement vers le provider secondaire, puis vers le traitement offline si nécessaire. Cette résilience est cruciale pour maintenir la disponibilité de service.

L'observabilité est obligatoire pour tous les flows. Chaque appel doit être tracé via OpenTelemetry avec labels appropriés selon le module : `lang.detect.fallback`, `chat.fail`, `ai.escalation`. Ces traces permettent le monitoring proactif et l'optimisation continue des performances.

### **Détection de Langue Darija**

La détection de langue constitue le cœur de la différenciation technique de SalamBot. Le système doit atteindre une précision minimale de 96% globalement et 88% spécifiquement pour le Darija. Ces seuils ne sont pas négociables et doivent être validés par des tests automatisés.

L'architecture hybride combine traitement offline ultra-rapide et validation cloud intelligente. Le système utilise trois niveaux de confiance pour optimiser automatiquement la stratégie de traitement. Les textes simples avec confiance >95% sont traités offline en 5-15ms. Les textes ambigus avec confiance 75-95% utilisent la validation hybride en 200-250ms. Les textes complexes <75% nécessitent le traitement cloud complet en 300-500ms.

La bibliothèque `libs/ai/lang-detect` implémente les algorithmes de détection pure sans dépendances externes lourdes. Elle doit supporter les variations régionales du Darija (Casablanca, Rabat, Marrakech, Fès) et gérer naturellement le code-switching arabe/français/anglais typique des conversations marocaines.

Le dictionnaire Darija doit contenir plus de 2000 expressions authentiques collectées et validées par des locuteurs natifs. Les patterns de n-grammes sont optimisés pour la détection bi-script (arabe et latin) avec gestion des translittérations courantes.

### **Génération de Réponses Contextuelles**

La génération de réponses doit respecter les spécificités culturelles et linguistiques marocaines. Bien que SalamBot comprenne le Darija en entrée, les réponses générées doivent être fournies en Arabe Standard Moderne (ASM) pour garantir la professionnalité et l'accessibilité.

Les prompts sont spécialisés par langue et contexte. Le prompt français/arabe utilise un style professionnel avec tutoiement neutre adapté au contexte business marocain. Le prompt Darija génère des réponses naturelles en ASM avec adaptation culturelle appropriée.

La sélection dynamique du modèle s'effectue selon la langue détectée. Gemini Pro gère le français et l'arabe via `genkit-vertexai`. Llama 4 fine-tuné traite le Darija via `genkit-openai` ou déploiement local selon les contraintes de latence.

Le cache Redis intelligent stocke les réponses fréquentes avec TTL d'une heure pour optimiser les performances. Les réponses sont indexées par hash du message d'entrée et langue détectée pour éviter les collisions.

## 📝 **Standards de Documentation**

### **Documentation Obligatoire**

Chaque fichier, bibliothèque, et application doit inclure une documentation complète et maintenue à jour. Le fichier `README.md` est obligatoire dans chaque dossier avec description claire du purpose, exemples d'usage, et instructions d'installation.

Toute bibliothèque doit inclure un diagramme Mermaid illustrant le flux de données ou l'architecture interne. Ces diagrammes facilitent la compréhension et servent de documentation visuelle pour les nouveaux développeurs.

La documentation est rédigée en français pour respecter le contexte local marocain. Les commentaires de code peuvent être en anglais pour maintenir la compatibilité avec les standards internationaux, mais la documentation utilisateur et les README doivent être en français.

Les exemples de code doivent être fonctionnels et testés. Chaque API publique doit inclure des exemples d'utilisation avec cas d'usage réels. La documentation doit être mise à jour simultanément avec les modifications de code.

### **Commentaires d'En-tête Standardisés**

Tous les fichiers source doivent commencer par un bloc de commentaires d'en-tête standardisé. Ce header inclut la description du fichier en français, l'auteur (SalamBot Team), les dates de création et mise à jour, et la référence au projet.

Le format exact doit être respecté scrupuleusement pour maintenir la cohérence. Les dates suivent le format ISO (YYYY-MM-DD). Pour les fichiers générés automatiquement, ajouter le tag `@generated` avec note sur le générateur utilisé.

Cette standardisation facilite la navigation dans le code, améliore la traçabilité des modifications, et maintient l'identité professionnelle du projet. Les outils d'analyse automatique peuvent également exploiter ces métadonnées.

Les descriptions doivent être concises mais précises, expliquant clairement le rôle et la responsabilité du fichier dans l'architecture globale. Éviter les descriptions génériques comme "fichier principal" au profit de descriptions spécifiques comme "API publique de détection automatique de la langue pour SalamBot".

## 🧪 **Standards de Tests et Qualité**

### **Couverture de Tests Obligatoire**

Chaque module doit inclure au minimum un fichier de test dans le dossier `__tests__`. La couverture de code doit atteindre 85% minimum pour les bibliothèques critiques et 75% pour les applications. Ces seuils sont vérifiés automatiquement par la CI/CD.

Les tests utilisent exclusivement **Vitest** pour sa rapidité et sa compatibilité native avec TypeScript. Les tests unitaires valident la logique métier isolée. Les tests d'intégration vérifient les interactions entre modules. Les tests end-to-end valident les parcours utilisateur complets.

La détection de langue doit faire l'objet de tests exhaustifs avec datasets représentatifs. Les cas de test incluent le Darija pur, les mélanges français-arabe, les translittérations, et les variations régionales. La précision doit être mesurée et documentée pour chaque catégorie.

Les mocks sont utilisés judicieusement pour isoler les unités testées sans compromettre la validité des tests. Les appels aux APIs externes sont mockés avec réponses réalistes. Les tests de performance valident les temps de réponse sous charge.

### **Analyse de Code Automatisée**

ESLint et Prettier sont configurés avec règles strictes pour maintenir la qualité et la cohérence du code. La configuration TypeScript utilise le mode strict avec vérifications avancées activées. Aucun warning ne doit subsister dans le code de production.

Les métriques de complexité cyclomatique sont surveillées pour identifier les fonctions nécessitant une refactorisation. La dette technique est mesurée et planifiée dans les sprints de maintenance. Les duplications de code sont détectées et éliminées.

L'analyse de sécurité SAST/DAST est intégrée au pipeline CI/CD pour détecter les vulnérabilités potentielles. Les dépendances sont auditées automatiquement avec mise à jour sécurisée des versions vulnérables.

Les revues de code utilisent des checklists standardisées couvrant la fonctionnalité, la performance, la sécurité, la maintenabilité, et la conformité aux standards. Chaque pull request doit être approuvée par au moins deux développeurs seniors.

## 🔄 **Workflow Git et CI/CD**

### **Conventions de Branches et Commits**

Le workflow Git suit une structure stricte avec protection de la branche `main` contre les push directs. Toutes les modifications passent par des pull requests avec revue obligatoire. La branche `main` reste toujours déployable en production.

Les branches de fonctionnalités suivent la convention `feature/ISSUE-description` pour les nouvelles fonctionnalités, `bugfix/ISSUE-description` pour les corrections, et `hotfix/ISSUE-description` pour les corrections urgentes en production.

Les messages de commit respectent la convention Conventional Commits avec format `feat(scope): description` pour les nouvelles fonctionnalités, `fix(scope): description` pour les corrections, `docs(scope): description` pour la documentation, et `refactor(scope): description` pour les refactorisations.

Chaque pull request doit être liée à une issue GitHub avec description claire du problème résolu et de la solution implémentée. Les titres de PR suivent le format `feat(lang-detect): add fallback logic` pour maintenir la cohérence et faciliter la génération automatique des changelogs.

### **Pipeline CI/CD Automatisé**

Le pipeline GitHub Actions automatise entièrement le processus de validation, build, et déploiement. Chaque push déclenche les jobs de lint, test, et build en parallèle pour optimiser les temps d'exécution.

La matrice de tests utilise Node.js 22 avec cache Nx pour accélérer les builds. Les artefacts sont stockés sécurisement avec signature cryptographique. Les variables d'environnement sensibles utilisent GitHub Secrets avec rotation automatique.

Le déploiement automatique vers les environnements de staging et production utilise des stratégies blue-green pour garantir zéro downtime. Les health checks post-déploiement vérifient automatiquement la santé des services.

Le monitoring post-déploiement surveille les métriques clés et peut déclencher un rollback automatique en cas de dégradation détectée. Les notifications Slack alertent l'équipe sur les succès et échecs de déploiement.

## 🔒 **Sécurité et Conformité**

### **Standards de Sécurité Enterprise**

Toutes les communications utilisent TLS 1.3 avec certificats automatiques gérés par Cloudflare. L'authentification JWT implémente la rotation automatique des clés avec validation stricte des tokens. Les données sensibles sont chiffrées avec AES-256 et clés gérées par Google Cloud KMS.

L'accès aux données suit le principe du moindre privilège avec RBAC granulaire. Les logs sécurisés capturent tous les accès et modifications avec horodatage cryptographique. Les audits de sécurité automatisés détectent les anomalies et déclenchent des alertes temps réel.

Les variables d'environnement sensibles ne doivent jamais être committées dans le code. L'utilisation de GitHub Secrets et Google Secret Manager est obligatoire pour toutes les clés API, mots de passe, et certificats.

Les dépendances sont auditées automatiquement avec mise à jour sécurisée des versions vulnérables. Les scans de sécurité SAST/DAST sont intégrés au pipeline CI/CD avec blocage automatique en cas de vulnérabilité critique détectée.

### **Conformité RGPD et Loi 09-08**

SalamBot doit respecter scrupuleusement le RGPD européen et la Loi 09-08 marocaine sur la protection des données personnelles. Le consentement explicite est requis avant tout traitement de données personnelles avec granularité fine des permissions.

Les données personnelles sont minimisées et pseudonymisées quand possible. Les durées de rétention sont configurables selon les exigences légales avec suppression automatique à expiration. Le droit à l'oubli est implémenté avec suppression complète et vérifiable.

La portabilité des données permet l'export dans des formats standards. Les procédures de réponse aux demandes d'exercice des droits sont automatisées pour garantir les délais légaux de 30 jours maximum.

La documentation de conformité est maintenue automatiquement avec traçabilité complète des traitements. Les registres de traitement sont générés automatiquement depuis les métadonnées du code avec mise à jour en temps réel.

## 📊 **Observabilité et Monitoring**

### **Logging et Tracing Obligatoires**

Tous les fallbacks (cloud → offline), erreurs, et escalations doivent être loggés via OpenTelemetry avec labels appropriés selon le module. Les logs structurés utilisent le format JSON avec niveaux configurables (debug, info, warn, error, fatal).

Les traces distribuées permettent le suivi des requêtes à travers tous les services avec corrélation automatique. Chaque flow Genkit génère des spans détaillés avec métriques de performance et métadonnées contextuelles.

Les métriques business sont collectées en temps réel : nombre de conversations, langues détectées, temps de réponse, taux de satisfaction client, et revenus générés. Ces métriques alimentent les dashboards exécutifs et les alertes proactives.

Les alertes intelligentes utilisent des seuils adaptatifs basés sur l'historique et les patterns saisonniers. L'escalation automatique notifie les équipes appropriées selon la criticité et l'impact business estimé.

### **Dashboards et Métriques**

Grafana Cloud héberge tous les dashboards avec organisation par audience : technique pour les développeurs, opérationnel pour les SRE, et exécutif pour le management. Chaque dashboard inclut des liens vers la documentation et les runbooks appropriés.

Les métriques SLI/SLO sont définies et surveillées automatiquement : disponibilité >99.9%, latence P95 <200ms, précision détection Darija >88%, et satisfaction client >4.5/5. Les budgets d'erreur sont calculés et communiqués hebdomadairement.

Les rapports automatisés génèrent des insights hebdomadaires et mensuels avec analyse des tendances, identification des optimisations potentielles, et recommandations d'amélioration. Ces rapports alimentent les décisions produit et technique.

Le monitoring prédictif utilise l'apprentissage automatique pour anticiper les problèmes potentiels et déclencher des actions préventives. Les modèles sont entraînés sur l'historique des incidents et les patterns de charge.

---

_Ces guidelines constituent le cadre de référence absolu pour le développement SalamBot. Leur respect garantit la qualité, la cohérence, et le succès du projet._
