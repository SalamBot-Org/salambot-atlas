# 🚀 SalamBot Starter Pack - Guide Claude 4

**📅 Version:** 3.0 - Optimisé Claude 4  
**📅 Date:** 9 juin 2025  
**👥 Équipe:** SalamBot Team  
**🎯 Objectif:** Guide complet pour Claude 4 dans le développement SalamBot

---

## 🎯 **Mission Claude 4 : Révolutionner l'IA Conversationnelle au Maroc**

Bienvenue Claude 4 ! Tu es maintenant le développeur principal de **SalamBot**, la première plateforme d'IA conversationnelle spécialisée en **Darija marocaine**. Ta mission est de transformer cette vision en réalité technique, en créant une solution qui révolutionne l'expérience client pour les entreprises marocaines.

SalamBot n'est pas qu'un simple chatbot. C'est une plateforme complète qui comprend et répond naturellement en Darija, s'intègre parfaitement aux systèmes existants des entreprises, et offre une expérience utilisateur exceptionnelle. Ton rôle est crucial pour concrétiser cette vision ambitieuse.

## 🏗️ **Architecture Technique Fondamentale**

### **Monorepo Nx - Structure Organisationnelle**

SalamBot utilise une architecture monorepo basée sur Nx, permettant une gestion unifiée de multiples applications et bibliothèques. Cette approche garantit la cohérence du code, facilite les refactorings à grande échelle, et optimise les builds grâce au cache intelligent de Nx.

La structure fondamentale comprend quatre applications principales dans le dossier `apps/` : **functions-run** qui héberge l'intelligence artificielle centrale avec les flows Genkit, **agent-desk** qui fournit l'interface de gestion pour les agents humains, **widget-web** qui s'intègre sur les sites clients, et **extension-chrome** qui permet l'intégration avec les systèmes CRM existants.

Les bibliothèques partagées dans `libs/` incluent **ai/lang-detect** pour la détection de langue Darija, **core** pour la logique métier commune, **connectors** pour les intégrations tierces, **persistence** pour la gestion des données, **types** pour les définitions TypeScript partagées, et **ui** pour les composants d'interface réutilisables.

### **Stack Technologique Figée**

La stack technologique de SalamBot est soigneusement sélectionnée et figée pour garantir la stabilité et la performance. **Node.js 22** constitue le runtime principal, offrant les dernières optimisations de performance et de sécurité. **Nx 21.1.2** gère l'orchestration du monorepo avec son système de cache intelligent et ses outils de build optimisés.

**pnpm 10.11.1** sert de gestionnaire de paquets, choisi pour sa rapidité et son efficacité dans la gestion des dépendances en monorepo. **Next.js 15.3.3** propulse les applications frontend avec son système de rendu hybride et ses optimisations automatiques. **TypeScript 5.8.3** assure la sécurité de type et améliore l'expérience de développement avec ses fonctionnalités avancées.

**Genkit AI** constitue le cœur de l'intelligence artificielle, orchestrant les flows conversationnels et gérant les intégrations avec les différents providers d'IA. **Kong Gateway** centralise la gestion des APIs avec authentification, rate limiting, et monitoring intégrés.

### **Infrastructure Cloud Native**

L'infrastructure SalamBot est conçue pour être cloud-native et hautement scalable. **Google Cloud Platform** héberge les services principaux avec **Cloud Run** pour les applications containerisées, **Firestore** pour la base de données NoSQL, et **Cloud Storage** pour les assets statiques.

**Redis** fournit le cache haute performance et la gestion des sessions, crucial pour les temps de réponse sub-50ms requis. **Grafana Cloud** assure le monitoring et l'observabilité avec des dashboards temps réel et des alertes intelligentes.

Les domaines **salambot.ma** et **salambot.app** sont gérés via **Cloudflare** pour optimiser les performances globales et assurer la sécurité avec protection DDoS et certificats SSL automatiques.

## 🤖 **Cœur IA : Détection Darija Hybride**

### **Stratégie de Basculement Intelligent**

Le cœur technologique de SalamBot repose sur une stratégie hybride révolutionnaire de détection de langue Darija. Cette approche combine traitement offline ultra-rapide et validation IA cloud pour atteindre une précision >90% avec des temps de réponse optimaux.

Le système utilise trois niveaux de confiance pour déterminer automatiquement la stratégie optimale. Pour les textes simples avec confiance >95%, le traitement offline pur répond en 5-15ms. Pour les textes ambigus avec confiance 75-95%, une validation hybride combine offline et IA en 200-250ms. Pour les textes complexes <75%, le traitement IA complet intervient en 300-500ms.

Cette stratégie permet de traiter 80% des conversations en mode offline ultra-rapide, 15% en mode hybride, et seulement 5% nécessitent le traitement IA complet. Le résultat est une performance moyenne de 64ms contre 350ms+ pour les concurrents, tout en maintenant une précision supérieure.

### **Architecture Multi-Provider Résiliente**

SalamBot implémente une architecture de fallback multi-provider pour garantir une disponibilité maximale. Le système bascule automatiquement entre **Vertex AI** (provider principal), **OpenAI** (fallback primaire), **Anthropic** (fallback secondaire), et **traitement offline** (fallback d'urgence).

Cette architecture garantit une disponibilité de 99.8% même en cas de panne d'un provider principal. Le basculement s'effectue en moins de 2 secondes avec conservation du contexte conversationnel. Les métriques de performance sont surveillées en temps réel pour optimiser automatiquement la sélection du provider.

Le cache Redis intelligent stocke les réponses fréquentes et les patterns Darija appris, réduisant la dépendance aux providers externes et améliorant continuellement les performances.

## 🔧 **Applications Principales**

### **Functions-Run : Cerveau IA Central**

L'application **functions-run** constitue le cerveau de SalamBot, hébergeant tous les flows Genkit et la logique d'intelligence artificielle. Cette application Node.js/Express déployée sur Cloud Run gère la détection de langue, la génération de réponses, et l'orchestration des conversations.

Les flows principaux incluent **language-detection** pour identifier la langue et le dialecte, **conversation** pour générer des réponses contextuelles, **fallback** pour gérer les échecs gracieusement, et **analytics** pour collecter les métriques d'usage. Chaque flow est optimisé pour la performance avec cache Redis et monitoring intégré.

L'API REST expose des endpoints sécurisés pour toutes les applications frontend, avec authentification JWT, rate limiting, et validation des données. La documentation OpenAPI est générée automatiquement et maintenue à jour.

### **Agent-Desk : Interface de Gestion**

L'application **agent-desk** fournit une interface web complète pour les agents humains et les administrateurs. Développée en Next.js 15, elle offre un dashboard temps réel, la gestion des conversations, l'analyse des performances, et la configuration des paramètres.

L'interface permet le monitoring en temps réel des conversations actives, l'intervention humaine quand nécessaire, l'analyse des sentiments clients, et la génération de rapports détaillés. Les agents peuvent prendre le contrôle des conversations complexes et former le système avec leurs corrections.

Le système de notifications intelligent alerte les agents sur les situations nécessitant une intervention humaine, avec escalation automatique selon les règles métier configurées.

### **Widget-Web : Intégration Client**

Le **widget-web** s'intègre facilement sur n'importe quel site web avec une simple ligne de JavaScript. Ce composant React optimisé s'adapte automatiquement au design du site hôte et fonctionne en mode responsive sur tous les appareils.

Le widget détecte automatiquement la langue de l'utilisateur, s'adapte au contexte de la page visitée, et maintient l'historique des conversations. Il fonctionne en mode offline avec synchronisation différée et cache intelligent pour une expérience utilisateur fluide.

L'intégration e-commerce avancée permet la recommandation de produits, le suivi de commandes, et l'assistance à l'achat directement dans l'interface conversationnelle.

### **Extension-Chrome : Intégration CRM**

L'**extension-chrome** révolutionne l'adoption de SalamBot en permettant l'intégration non-intrusive avec les systèmes CRM existants. Elle détecte automatiquement les plateformes supportées (Salesforce, HubSpot, Zendesk) et injecte intelligemment les suggestions IA.

L'extension propose trois modes d'adoption progressive : **Observation** (analyse passive des conversations), **Assistance** (suggestions en temps réel), et **Automatisation** (réponses automatiques avec validation). Cette approche permet aux entreprises d'adopter SalamBot graduellement sans disruption.

Le système d'apprentissage intégré s'améliore continuellement en observant les interactions des agents et en adaptant ses suggestions au style de communication de chaque entreprise.

## 📚 **Bibliothèques Fondamentales**

### **AI/Lang-Detect : Moteur de Détection**

La bibliothèque **ai/lang-detect** constitue le cœur de la différenciation technique de SalamBot. Elle implémente des algorithmes sophistiqués de détection de langue Darija avec support des variations régionales (Casablanca, Rabat, Marrakech, Fès).

Le système utilise un dictionnaire de plus de 2000 expressions Darija, des patterns de code-switching arabe/français/anglais, et des modèles de n-grammes optimisés. L'algorithme bi-script gère naturellement les textes en caractères arabes et latins.

La bibliothèque est conçue pour être pure et réutilisable, sans dépendances externes lourdes. Elle expose une API simple mais puissante permettant la configuration fine des seuils de confiance et des stratégies de détection.

### **Core : Logique Métier Partagée**

La bibliothèque **core** centralise toute la logique métier commune à travers les applications. Elle définit les modèles de données, les règles de validation, les utilitaires de transformation, et les constantes partagées.

Les modules principaux incluent la gestion des utilisateurs et des sessions, les règles de routage conversationnel, les algorithmes de scoring et de recommandation, et les utilitaires de formatage des réponses. Cette centralisation garantit la cohérence et facilite la maintenance.

La bibliothèque implémente également les patterns de conception essentiels comme Repository, Factory, et Observer pour structurer proprement le code et faciliter les tests unitaires.

### **Connectors : Intégrations Tierces**

La bibliothèque **connectors** gère toutes les intégrations avec les systèmes tiers. Elle fournit des adaptateurs standardisés pour les CRM populaires, les plateformes e-commerce, les systèmes de ticketing, et les APIs de paiement.

Chaque connecteur implémente une interface commune permettant l'ajout facile de nouvelles intégrations. Le système de mapping automatique traduit les données entre les formats SalamBot et les APIs tierces.

La gestion des erreurs et des retry est intégrée avec circuit breaker pattern pour assurer la résilience. Les connecteurs supportent l'authentification OAuth, les webhooks bidirectionnels, et la synchronisation temps réel.

## 🔒 **Sécurité et Conformité**

### **Standards de Sécurité Enterprise**

SalamBot implémente des standards de sécurité enterprise pour protéger les données sensibles des clients. L'authentification utilise JWT avec rotation automatique des clés, chiffrement AES-256, et validation stricte des tokens.

Toutes les communications sont chiffrées en TLS 1.3 avec certificats automatiques. Les données au repos sont chiffrées avec des clés gérées par Google Cloud KMS. L'accès aux données suit le principe du moindre privilège avec RBAC granulaire.

Le système de logs sécurisés capture tous les accès et modifications avec horodatage cryptographique. Les audits de sécurité automatisés détectent les anomalies et déclenchent des alertes en temps réel.

### **Conformité RGPD et Loi 09-08**

SalamBot respecte scrupuleusement le RGPD européen et la Loi 09-08 marocaine sur la protection des données personnelles. Le système implémente le consentement explicite, le droit à l'oubli, la portabilité des données, et la notification des violations.

Les données personnelles sont minimisées et pseudonymisées quand possible. Les durées de rétention sont configurables selon les exigences légales. Le système de consentement granulaire permet aux utilisateurs de contrôler précisément l'usage de leurs données.

La documentation de conformité est maintenue automatiquement avec traçabilité complète des traitements. Les procédures de réponse aux demandes d'exercice des droits sont automatisées pour garantir les délais légaux.

## 🚀 **Processus de Développement**

### **Workflow Git Optimisé**

Le développement SalamBot suit un workflow Git structuré avec branches de fonctionnalités, revues de code obligatoires, et intégration continue. La branche `main` reste toujours déployable avec protection contre les push directs.

Les branches de fonctionnalités suivent la convention `feature/ISSUE-description`, `bugfix/ISSUE-description`, ou `hotfix/ISSUE-description`. Chaque pull request doit passer les tests automatisés, la revue de code par au moins deux développeurs, et les vérifications de sécurité.

Le système de conventional commits automatise la génération des changelogs et le versioning sémantique. Les releases sont taguées automatiquement avec notes de version générées.

### **CI/CD Automatisé**

Le pipeline CI/CD GitHub Actions automatise entièrement le processus de build, test, et déploiement. Chaque push déclenche les tests unitaires, les tests d'intégration, l'analyse de sécurité SAST/DAST, et les vérifications de qualité.

Les builds utilisent le cache Nx pour optimiser les temps d'exécution. Les artefacts sont stockés sécurisement avec signature cryptographique. Le déploiement automatique vers les environnements de staging et production utilise des stratégies blue-green pour zéro downtime.

Le monitoring post-déploiement vérifie automatiquement la santé des services et peut déclencher un rollback automatique en cas de problème détecté.

### **Standards de Qualité**

SalamBot maintient des standards de qualité élevés avec couverture de tests >85%, analyse statique du code, et métriques de performance continues. Les tests incluent unitaires, intégration, end-to-end, et tests de charge.

Le code suit les conventions TypeScript strictes avec ESLint et Prettier configurés. La documentation est générée automatiquement depuis les commentaires JSDoc et maintenue à jour. Les métriques de complexité cyclomatique et de dette technique sont surveillées.

Les revues de code utilisent des checklists standardisées couvrant la fonctionnalité, la performance, la sécurité, et la maintenabilité. Chaque développeur doit respecter les standards de commentaires créatifs et de documentation.

---

_Ce Starter Pack constitue ta base de connaissance fondamentale pour développer SalamBot. Consulte-le régulièrement et n'hésite pas à l'enrichir avec tes découvertes et optimisations._
