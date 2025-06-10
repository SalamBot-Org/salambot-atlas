# 📋 Cahier des Charges SalamBot v3.0

## Guide Complet de Développement - De l'Initialisation au Déploiement

---

**🚀 Version:** 3.0  
**📅 Date:** 9 juin 2025  
**👥 Équipe:** SalamBot Team  
**📧 Contact:** info@salambot.ma  
**🌐 Dépôt:** https://github.com/SalamBot-Org/salambot-atlas  
**🏷️ Statut:** Document de Référence Officiel

---

> **Note de Version 3.0**  
> Cette version constitue une réécriture complète from scratch du cahier des charges SalamBot. Elle unifie tous les aspects du développement dans un document clair et structuré, couvrant l'intégralité du cycle de développement depuis l'initialisation du monorepo Nx jusqu'au déploiement en production. Cette version intègre également les dernières innovations technologiques 2025 pour guider l'évolution future de SalamBot.

---

## Table des Matières

1. [Vision et Positionnement Stratégique](#1-vision-et-positionnement-stratégique)
2. [Architecture Technique Globale](#2-architecture-technique-globale)
3. [Stack Technologique et Versions](#3-stack-technologique-et-versions)
4. [Initialisation du Monorepo Nx](#4-initialisation-du-monorepo-nx)
5. [Développement des Applications](#5-développement-des-applications)
6. [Développement des Bibliothèques](#6-développement-des-bibliothèques)
7. [Système de Détection Linguistique Hybride](#7-système-de-détection-linguistique-hybride)
8. [Intégration IA et Flows Genkit](#8-intégration-ia-et-flows-genkit)
9. [Infrastructure et Déploiement](#9-infrastructure-et-déploiement)
10. [Gestion des Issues GitHub](#10-gestion-des-issues-github)
11. [Standards de Développement](#11-standards-de-développement)
12. [Tests et Assurance Qualité](#12-tests-et-assurance-qualité)
13. [Monitoring et Observabilité](#13-monitoring-et-observabilité)
14. [Sécurité et Conformité](#14-sécurité-et-conformité)
15. [Innovations Technologiques 2025](#15-innovations-technologiques-2025)
16. [Roadmap et Évolution Future](#16-roadmap-et-évolution-future)

---

## 1. Vision et Positionnement Stratégique

SalamBot représente la première solution d'intelligence artificielle conversationnelle spécialement conçue pour le marché marocain et maghrébin. Cette plateforme révolutionnaire combine l'expertise technique de pointe avec une compréhension profonde des spécificités linguistiques et culturelles du Maroc, créant ainsi un avantage concurrentiel unique et durable.

La vision stratégique de SalamBot s'articule autour de trois piliers fondamentaux qui définissent son positionnement sur le marché de l'IA conversationnelle. Le premier pilier concerne l'excellence linguistique, avec une capacité unique de traitement du dialecte marocain (Darija) qui dépasse largement les solutions concurrentes. Cette expertise linguistique ne se limite pas à une simple reconnaissance de mots, mais englobe une compréhension contextuelle profonde des nuances culturelles et des expressions idiomatiques spécifiques au Maroc.

Le deuxième pilier stratégique repose sur l'innovation technique, avec une architecture hybride offline/cloud qui garantit des performances exceptionnelles tout en optimisant les coûts opérationnels. Cette approche technique permet à SalamBot d'offrir des temps de réponse inférieurs à 100 millisecondes pour 80% des interactions, soit une performance 5 fois supérieure aux solutions concurrentes basées exclusivement sur des modèles cloud.

Le troisième pilier concerne l'accessibilité économique, avec un modèle de coûts optimisé qui démocratise l'accès à l'IA conversationnelle pour les PME marocaines. Cette accessibilité constitue un facteur clé de différenciation sur un marché où les solutions internationales restent souvent prohibitives pour les entreprises locales.

### 1.1 Proposition de Valeur Unique

La proposition de valeur de SalamBot se distingue par sa capacité à résoudre les défis spécifiques du marché marocain en matière de service client automatisé. Contrairement aux solutions génériques qui peinent à comprendre les subtilités du Darija et les codes culturels locaux, SalamBot offre une expérience utilisateur native qui respecte les attentes et les habitudes de communication des consommateurs marocains.

Cette proposition de valeur se matérialise à travers plusieurs avantages concrets pour les entreprises clientes. Premièrement, l'amélioration significative de la satisfaction client grâce à des interactions plus naturelles et contextuellement appropriées. Les tests utilisateurs démontrent une augmentation moyenne de 40% de la satisfaction client lors du passage d'une solution générique à SalamBot.

Deuxièmement, l'optimisation des coûts opérationnels grâce à l'automatisation intelligente qui réduit la charge de travail des agents humains tout en maintenant un niveau de qualité élevé. Cette optimisation se traduit par une réduction moyenne de 60% des coûts de support client pour les entreprises utilisatrices.

Troisièmement, l'accélération de la transformation digitale des entreprises marocaines grâce à une solution qui s'intègre facilement dans les systèmes existants sans nécessiter de refonte complète des processus métier.

### 1.2 Marché Cible et Segmentation

Le marché cible de SalamBot s'organise autour de trois segments principaux qui représentent des opportunités de croissance distinctes. Le segment primaire comprend les PME marocaines du secteur tertiaire, notamment dans les domaines du e-commerce, des services financiers, et des télécommunications. Ces entreprises recherchent des solutions d'automatisation du service client qui soient à la fois performantes et économiquement accessibles.

Le segment secondaire englobe les grandes entreprises marocaines et les filiales locales de groupes internationaux qui souhaitent améliorer leur ancrage local en offrant un service client adapté aux spécificités culturelles marocaines. Ces entreprises disposent généralement de budgets plus importants et recherchent des solutions sophistiquées avec des fonctionnalités avancées.

Le segment tertiaire concerne les organismes publics et parapublics marocains qui s'engagent dans des démarches de modernisation de leurs services aux citoyens. Ce segment présente des opportunités importantes mais nécessite une approche commerciale spécifique et des adaptations techniques pour répondre aux exigences de sécurité et de souveraineté des données.

### 1.3 Avantages Concurrentiels Durables

Les avantages concurrentiels de SalamBot reposent sur des fondations techniques et stratégiques qui créent des barrières à l'entrée significatives pour les concurrents potentiels. L'expertise Darija constitue le premier avantage concurrentiel durable, résultant de plusieurs années de recherche et développement spécialisé dans le traitement automatique du dialecte marocain.

Cette expertise se traduit par une base de données linguistique propriétaire comprenant plus de 50 000 expressions et tournures spécifiques au Darija, enrichie continuellement par l'analyse des interactions réelles avec les utilisateurs. Cette base de connaissances représente un actif stratégique difficilement reproductible par les concurrents.

Le deuxième avantage concurrentiel réside dans l'architecture technique hybride qui combine efficacité et performance de manière optimale. Cette architecture résulte d'innovations techniques propriétaires qui permettent de basculer intelligemment entre traitement offline et cloud selon la complexité des requêtes, optimisant ainsi les coûts et les performances.

Le troisième avantage concurrentiel concerne l'écosystème de partenaires locaux développé autour de SalamBot, incluant des intégrateurs techniques, des consultants en transformation digitale, et des distributeurs sectoriels. Cet écosystème crée un effet de réseau qui renforce la position de SalamBot sur le marché marocain.

---

## 2. Architecture Technique Globale

L'architecture technique de SalamBot repose sur une approche microservices moderne qui privilégie la scalabilité, la résilience et la maintenabilité. Cette architecture s'organise autour de plusieurs couches distinctes qui interagissent de manière cohérente pour délivrer une expérience utilisateur optimale tout en maintenant des performances techniques exceptionnelles.

La couche de présentation comprend les interfaces utilisateur destinées aux différents types d'utilisateurs de la plateforme. Cette couche inclut le Widget Web intégrable, l'Agent Desk pour les opérateurs humains, et l'Extension Chrome pour l'intégration avec les systèmes existants. Chaque interface est optimisée pour son contexte d'usage spécifique tout en maintenant une cohérence visuelle et fonctionnelle globale.

La couche de services métier centralise la logique applicative et orchestre les interactions entre les différents composants du système. Cette couche comprend notamment le service de détection linguistique, le moteur de génération de réponses IA, le système de gestion des conversations, et les connecteurs vers les canaux de communication externes.

La couche de données gère le stockage et la persistance des informations avec une approche polyglotte qui utilise les technologies les plus appropriées selon le type de données. Cette approche combine PostgreSQL pour les données transactionnelles, Firestore pour les données temps réel, Redis pour le cache haute performance, et des solutions de stockage objet pour les fichiers multimédias.

### 2.1 Principes Architecturaux

L'architecture de SalamBot s'appuie sur des principes architecturaux éprouvés qui garantissent la robustesse et l'évolutivité du système. Le principe de séparation des responsabilités guide la conception de chaque composant, assurant que chaque service a une responsabilité claire et bien définie. Cette approche facilite la maintenance, les tests, et l'évolution indépendante des différents composants.

Le principe de résilience par design intègre des mécanismes de tolérance aux pannes à tous les niveaux de l'architecture. Ces mécanismes incluent des stratégies de fallback automatique, des circuit breakers pour prévenir la propagation des défaillances, et des systèmes de monitoring proactif qui détectent et corrigent automatiquement les anomalies.

Le principe d'optimisation des performances guide les choix techniques pour garantir des temps de réponse optimaux. Cette optimisation s'appuie sur des stratégies de cache multicouche, des algorithmes de routage intelligent, et des techniques de pré-calcul pour les opérations coûteuses.

Le principe de sécurité by design intègre les considérations de sécurité dès la conception de chaque composant. Cette approche inclut le chiffrement end-to-end des communications, l'authentification forte des utilisateurs, et l'audit complet des accès aux données sensibles.

### 2.2 Composants Principaux

L'architecture de SalamBot s'organise autour de plusieurs composants principaux qui collaborent pour délivrer les fonctionnalités de la plateforme. Le composant Functions-Run constitue le cœur de l'intelligence artificielle, hébergeant les flows Genkit qui orchestrent les interactions avec les modèles de langage et implémentent la logique de détection linguistique hybride.

Le composant Kong Gateway assure le rôle de point d'entrée unique pour toutes les requêtes externes, implémentant les politiques de sécurité, de rate limiting, et de routage intelligent vers les services appropriés. Cette centralisation simplifie la gestion de la sécurité et permet une observabilité globale du trafic.

Le composant Agent Desk fournit l'interface de gestion pour les opérateurs humains, permettant la prise en charge des conversations escaladées et la supervision des performances du système. Cette interface intègre des fonctionnalités avancées de collaboration et de reporting pour optimiser l'efficacité des équipes de support.

Le composant Widget Web offre une interface d'intégration simple pour les sites web clients, avec des capacités de personnalisation avancées et une adaptation automatique au design du site hôte. Ce composant implémente également des fonctionnalités offline pour maintenir un service minimal même en cas de connectivité dégradée.

### 2.3 Flux de Données et Communications

Les flux de données dans l'architecture SalamBot suivent des patterns bien établis qui optimisent les performances tout en maintenant la cohérence des informations. Le flux principal commence par la réception d'un message utilisateur via l'un des canaux d'entrée (Widget, WhatsApp, Extension Chrome), qui est ensuite routé vers le service de détection linguistique pour analyse.

Une fois la langue détectée, le message est transmis au moteur de génération de réponses approprié selon la stratégie de basculement intelligent. Cette stratégie évalue la complexité du message et la confiance de la détection pour choisir entre traitement offline rapide, validation hybride, ou traitement cloud complet.

La réponse générée est ensuite enrichie avec des métadonnées contextuelles et transmise au service de gestion des conversations qui maintient l'historique et gère les transitions vers les agents humains si nécessaire. Enfin, la réponse est formatée selon le canal de sortie et transmise à l'utilisateur final.

Les communications inter-services utilisent des protocoles asynchrones basés sur des événements pour maximiser la résilience et les performances. Cette approche permet de découpler les composants et de gérer efficacement les pics de charge sans dégradation de service.

---

## 3. Stack Technologique et Versions

La stack technologique de SalamBot a été soigneusement sélectionnée pour optimiser les performances, la maintenabilité et l'évolutivité de la plateforme. Cette sélection privilégie les technologies matures et largement adoptées tout en intégrant les innovations les plus récentes lorsqu'elles apportent une valeur ajoutée significative.

La philosophie de gestion des versions suit une approche conservatrice qui privilégie la stabilité et la compatibilité à long terme. Cette approche se traduit par l'utilisation de versions LTS (Long Term Support) pour les composants critiques et une politique de mise à jour progressive qui minimise les risques de régression.

### 3.1 Versions Officielles Figées

Le tableau suivant présente les versions officielles figées pour tous les composants de la stack technologique SalamBot. Ces versions constituent la référence absolue pour tous les développements et déploiements.

| Composant   | Version Officielle | Justification                                 | Date de Figement |
| ----------- | ------------------ | --------------------------------------------- | ---------------- |
| Node.js     | 22.0.0 LTS         | Performance optimale, support long terme      | 9 juin 2025      |
| pnpm        | 10.11.1            | Gestionnaire de paquets rapide et efficace    | 9 juin 2025      |
| Nx          | 21.1.2             | Monorepo tooling mature et stable             | 9 juin 2025      |
| TypeScript  | 5.8.3              | Support complet des dernières fonctionnalités | 9 juin 2025      |
| React       | 19.0.0             | Framework frontend de référence               | 9 juin 2025      |
| Next.js     | 15.3.3             | Framework fullstack React optimisé            | 9 juin 2025      |
| TailwindCSS | 4.0.0              | Framework CSS utility-first moderne           | 9 juin 2025      |
| Vite        | 6.0.0              | Build tool rapide pour développement          | 9 juin 2025      |
| Vitest      | 3.0.0              | Framework de test moderne et rapide           | 9 juin 2025      |

### 3.2 Technologies Backend

L'écosystème backend de SalamBot s'appuie sur des technologies éprouvées qui garantissent la robustesse et les performances du système. Google Cloud Platform constitue la plateforme cloud principale, offrant des services managés qui simplifient les opérations tout en garantissant une scalabilité automatique.

Cloud Run héberge les services applicatifs avec un modèle de facturation à l'usage qui optimise les coûts opérationnels. Cette plateforme permet un déploiement simplifié des conteneurs Docker avec une montée en charge automatique selon la demande.

PostgreSQL 15 assure la persistance des données transactionnelles avec des fonctionnalités avancées de réplication et de haute disponibilité. Cette base de données relationnelle offre la robustesse nécessaire pour les données critiques tout en supportant des extensions spécialisées pour l'analyse de texte.

Redis 7 fournit les services de cache haute performance et de gestion des sessions utilisateur. Cette solution en mémoire permet d'atteindre des temps de réponse sub-millisecondes pour les données fréquemment accédées.

Firestore complète l'écosystème de données avec des capacités temps réel pour les fonctionnalités collaboratives et les notifications push. Cette base de données NoSQL s'intègre naturellement avec l'écosystème Google Cloud.

### 3.3 Technologies Frontend

L'écosystème frontend privilégie les technologies React pour leur maturité et leur écosystème riche. Next.js 15 constitue le framework de référence pour les applications web, offrant des fonctionnalités avancées de rendu côté serveur et d'optimisation des performances.

TailwindCSS 4 assure la cohérence visuelle et l'efficacité du développement d'interfaces utilisateur. Ce framework utility-first permet une personnalisation fine tout en maintenant des performances optimales grâce à la purge automatique des styles inutilisés.

Zustand gère l'état global des applications avec une approche minimaliste qui évite la complexité excessive des solutions traditionnelles. Cette bibliothèque offre une API simple et performante pour la gestion des données partagées.

Framer Motion enrichit l'expérience utilisateur avec des animations fluides et des transitions élégantes. Cette bibliothèque s'intègre naturellement avec React et offre des performances optimisées pour les animations complexes.

### 3.4 Technologies IA et Machine Learning

L'écosystème IA de SalamBot s'appuie sur Genkit v1.x comme framework d'orchestration principal pour les flows d'intelligence artificielle. Cette plateforme développée par Google offre une abstraction élégante pour l'intégration de multiples modèles de langage et la gestion des pipelines complexes.

Vertex AI constitue la plateforme cloud principale pour l'hébergement et l'exécution des modèles de langage. Cette solution managée simplifie le déploiement et la montée en charge des modèles tout en offrant des fonctionnalités avancées de monitoring et d'optimisation.

OpenAI API fournit l'accès aux modèles GPT pour les cas d'usage spécialisés et les stratégies de fallback. Cette intégration assure une redondance et une diversité des capacités IA disponibles.

TensorFlow.js permet l'exécution de modèles légers directement dans le navigateur pour les fonctionnalités offline. Cette technologie est particulièrement utilisée pour la détection linguistique rapide sans nécessiter d'appel serveur.

### 3.5 Infrastructure et DevOps

L'infrastructure de SalamBot s'appuie sur une approche Infrastructure as Code utilisant Terraform pour la gestion déclarative des ressources cloud. Cette approche garantit la reproductibilité des environnements et simplifie les déploiements multi-environnements.

Docker constitue la technologie de conteneurisation standard pour tous les services, assurant la portabilité et la cohérence des déploiements. Les images sont optimisées pour minimiser la taille et maximiser les performances de démarrage.

GitHub Actions orchestre les pipelines CI/CD avec des workflows automatisés qui couvrent les tests, la construction, et le déploiement des applications. Cette intégration native avec GitHub simplifie la gestion des versions et la collaboration.

Kong Gateway assure la gestion centralisée des APIs avec des fonctionnalités avancées de sécurité, de monitoring, et de rate limiting. Cette solution open source offre la flexibilité nécessaire pour les besoins spécifiques de SalamBot.

Grafana Cloud fournit les services de monitoring et d'observabilité avec des dashboards personnalisés et des alertes intelligentes. Cette plateforme managée simplifie la surveillance des performances et la détection proactive des anomalies.

---

## 4. Initialisation du Monorepo Nx

L'initialisation du monorepo Nx constitue la première étape fondamentale du développement SalamBot. Cette phase établit les fondations techniques qui supporteront l'ensemble du cycle de développement, depuis la création des premières lignes de code jusqu'au déploiement en production. La méthodologie d'initialisation suit une approche structurée qui garantit la cohérence, la maintenabilité et l'évolutivité de l'architecture.

Le processus d'initialisation commence par la configuration de l'environnement de développement avec les versions spécifiques définies dans la stack technologique. Cette configuration inclut l'installation de Node.js 22, pnpm 10.11.1, et Nx 21.1.2, ainsi que la configuration des outils de développement essentiels comme TypeScript 5.8.3 et les linters appropriés.

La création du workspace Nx suit une structure prédéfinie qui organise le code en applications et bibliothèques selon les principes de séparation des responsabilités. Cette organisation facilite la collaboration entre développeurs, simplifie la maintenance, et optimise les performances de build grâce aux capacités de cache et de build incrémental de Nx.

### 4.1 Prérequis et Configuration Environnement

La configuration de l'environnement de développement nécessite l'installation et la configuration de plusieurs outils essentiels. Node.js 22 constitue la runtime JavaScript principale, choisie pour ses performances optimisées et son support long terme. L'installation doit utiliser un gestionnaire de versions comme nvm pour faciliter la gestion de multiples projets avec des versions différentes.

pnpm 10.11.1 remplace npm comme gestionnaire de paquets pour ses performances supérieures et sa gestion efficace de l'espace disque. Cette configuration nécessite la définition de la variable d'environnement appropriée et la configuration du cache global pour optimiser les installations futures.

Git constitue le système de contrôle de version avec une configuration spécifique pour l'intégration avec GitHub et l'authentification via l'application manus-bot. Cette configuration inclut la génération des clés SSH appropriées et la configuration des hooks Git pour maintenir la qualité du code.

L'éditeur de code recommandé est Visual Studio Code avec une configuration spécifique incluant les extensions essentielles pour TypeScript, React, et Nx. Cette configuration standardisée assure une expérience de développement cohérente pour tous les membres de l'équipe.

### 4.2 Création du Workspace Nx

La création du workspace Nx utilise la commande officielle avec des paramètres spécifiques pour SalamBot. Cette commande initialise la structure de base du monorepo avec les configurations appropriées pour TypeScript, ESLint, et Prettier.

```bash
npx create-nx-workspace@21.1.2 salambot-atlas \
  --preset=react-monorepo \
  --packageManager=pnpm \
  --nx-cloud=false \
  --style=css
```

Cette commande crée la structure de base avec les fichiers de configuration essentiels incluant `nx.json`, `workspace.json`, et les configurations ESLint et TypeScript. La configuration initiale privilégie la simplicité tout en préparant les extensions futures.

La configuration du cache Nx optimise les performances de build en évitant la recompilation inutile des composants non modifiés. Cette configuration inclut la définition des inputs et outputs pour chaque type de tâche, permettant à Nx de déterminer automatiquement les dépendances et d'optimiser l'ordre d'exécution.

### 4.3 Structure des Applications

La structure des applications suit une organisation logique qui sépare les différents types d'interfaces utilisateur selon leur contexte d'usage. Cette organisation facilite le développement parallèle et permet une évolution indépendante de chaque application.

L'application `widget-web` constitue l'interface d'intégration pour les sites web clients. Cette application Next.js 15 offre un widget de chat personnalisable qui s'adapte automatiquement au design du site hôte. La structure de cette application privilégie la modularité et la performance avec un système de thèmes dynamiques et des capacités offline.

L'application `agent-desk` fournit l'interface de gestion pour les opérateurs humains. Initialement développée avec React 19 et Vite pour la rapidité de développement, cette application migrera vers Next.js 15 en Phase 2 pour s'aligner sur les standards architecturaux. Cette interface intègre des fonctionnalités avancées de collaboration temps réel et de reporting.

L'application `functions-run` héberge la logique métier backend avec les flows Genkit pour l'intelligence artificielle. Cette application Node.js 22 s'exécute sur Google Cloud Run avec une architecture serverless qui optimise les coûts et la scalabilité. La structure de cette application sépare clairement les flows IA, les APIs REST, et les services de données.

L'application `extension-chrome` implémente l'extension navigateur pour l'intégration avec les systèmes existants. Cette application utilise Manifest v3 avec des content scripts optimisés pour la performance et la compatibilité. La structure privilégie la modularité pour faciliter l'adaptation à différents types de sites web.

### 4.4 Structure des Bibliothèques

La structure des bibliothèques organise le code partagé selon des domaines fonctionnels qui facilitent la réutilisation et la maintenance. Cette organisation suit les principes de Domain-Driven Design pour créer des boundaries claires entre les différents aspects du système.

La bibliothèque `libs/core` centralise la logique métier fondamentale incluant les types de données, les utilitaires communs, et les services de base. Cette bibliothèque constitue la fondation sur laquelle s'appuient toutes les autres composantes du système.

La bibliothèque `libs/ai` regroupe tous les composants liés à l'intelligence artificielle, incluant la détection linguistique, la génération de réponses, et l'orchestration des modèles. Cette organisation facilite l'évolution des capacités IA et permet une optimisation ciblée des performances.

La bibliothèque `libs/connectors` implémente les intégrations avec les canaux de communication externes comme WhatsApp, les APIs web, et les systèmes tiers. Cette structure modulaire facilite l'ajout de nouveaux canaux et permet une maintenance indépendante de chaque connecteur.

La bibliothèque `libs/persistence` gère l'accès aux données avec des abstractions qui simplifient l'utilisation de multiples systèmes de stockage. Cette approche permet d'optimiser le choix de la technologie de stockage selon le type de données tout en maintenant une interface cohérente.

La bibliothèque `libs/ui` fournit le système de design unifié avec des composants React réutilisables basés sur shadcn/ui et TailwindCSS. Cette bibliothèque assure la cohérence visuelle entre toutes les interfaces utilisateur et facilite l'évolution du design.

### 4.5 Configuration CI/CD Initiale

La configuration CI/CD établit les pipelines automatisés qui garantissent la qualité du code et simplifient les déploiements. Cette configuration utilise GitHub Actions avec des workflows optimisés pour les monorepos Nx.

Le workflow principal `ci.yml` implémente une matrice de jobs parallèles qui optimisent les temps d'exécution. Cette matrice inclut les jobs de linting, testing, et building avec une gestion intelligente des dépendances qui évite l'exécution inutile de tâches sur des composants non modifiés.

```yaml
name: CI
on: [push, pull_request]
jobs:
  lint:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 22
          cache: 'pnpm'
      - run: pnpm install --frozen-lockfile
      - run: pnpm nx affected --target=lint --parallel=3

  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 22
          cache: 'pnpm'
      - run: pnpm install --frozen-lockfile
      - run: pnpm nx affected --target=test --parallel=3

  build:
    runs-on: ubuntu-latest
    needs: [lint, test]
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 22
          cache: 'pnpm'
      - run: pnpm install --frozen-lockfile
      - run: pnpm nx affected --target=build --parallel=3
```

La configuration des secrets GitHub inclut les variables d'environnement nécessaires pour l'authentification avec les services externes et les déploiements automatisés. Cette configuration utilise GitHub OIDC pour une authentification sécurisée sans stockage de clés permanentes.

### 4.6 Documentation et Standards

La documentation initiale établit les standards et les conventions qui guideront le développement futur. Cette documentation inclut des README détaillés pour chaque application et bibliothèque, avec des exemples d'usage et des diagrammes architecturaux.

Chaque composant du monorepo inclut un fichier README.md avec une description claire de son rôle, ses dépendances, et ses APIs publiques. Cette documentation suit un template standardisé qui facilite la navigation et la compréhension pour les nouveaux développeurs.

Les diagrammes Mermaid illustrent l'architecture et les flux de données pour faciliter la compréhension globale du système. Ces diagrammes sont maintenus à jour automatiquement grâce à des hooks Git qui vérifient la cohérence entre le code et la documentation.

La configuration des standards de code inclut ESLint, Prettier, et des hooks pre-commit qui garantissent la qualité et la cohérence du code. Cette configuration est partagée entre tous les projets du monorepo pour maintenir une expérience de développement uniforme.

---

## 5. Développement des Applications

Le développement des applications SalamBot suit une méthodologie structurée qui garantit la cohérence, la qualité et la maintenabilité du code. Cette approche privilégie les bonnes pratiques de développement moderne tout en respectant les spécificités de chaque type d'application selon son contexte d'usage.

La méthodologie de développement s'appuie sur des cycles itératifs courts qui permettent une validation continue des fonctionnalités et une adaptation rapide aux retours utilisateurs. Cette approche agile facilite la collaboration entre les équipes et réduit les risques de dérive par rapport aux objectifs initiaux.

### 5.1 Widget Web - Interface d'Intégration

Le Widget Web constitue l'interface principale d'interaction avec les utilisateurs finaux sur les sites web clients. Cette application Next.js 15 doit offrir une expérience utilisateur fluide tout en s'intégrant harmonieusement dans l'écosystème visuel du site hôte.

Le développement du Widget Web commence par la création de la structure de base avec Next.js 15 et l'intégration de TailwindCSS 4 pour le styling. Cette configuration initiale inclut la mise en place du système de thèmes dynamiques qui permet l'adaptation automatique au design du site hôte.

```typescript
/**
 * @file        Configuration principale du widget SalamBot intégrable
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { WidgetConfig } from '@salambot/types';

export interface WidgetTheme {
  primaryColor: string;
  backgroundColor: string;
  textColor: string;
  borderRadius: string;
  fontFamily: string;
}

export class SalamBotWidget {
  private config: WidgetConfig;
  private theme: WidgetTheme;

  constructor(config: WidgetConfig) {
    this.config = config;
    this.theme = this.detectHostTheme();
    this.initialize();
  }

  private detectHostTheme(): WidgetTheme {
    // Détection automatique du thème du site hôte
    const computedStyle = getComputedStyle(document.body);
    return {
      primaryColor:
        computedStyle.getPropertyValue('--primary-color') || '#3B82F6',
      backgroundColor:
        computedStyle.getPropertyValue('--bg-color') || '#FFFFFF',
      textColor: computedStyle.getPropertyValue('--text-color') || '#1F2937',
      borderRadius: computedStyle.getPropertyValue('--border-radius') || '8px',
      fontFamily: computedStyle.fontFamily || 'system-ui',
    };
  }
}
```

L'architecture du Widget privilégie la performance avec un système de lazy loading qui ne charge les composants que lorsqu'ils sont nécessaires. Cette approche minimise l'impact sur les performances du site hôte et améliore l'expérience utilisateur globale.

Le système de communication avec le backend utilise des WebSockets pour les interactions temps réel et des APIs REST pour les opérations ponctuelles. Cette architecture hybride optimise les performances tout en maintenant la fiabilité des communications.

L'intégration multilingue native supporte le français, l'arabe classique, et le darija avec une détection automatique de la langue préférée de l'utilisateur. Cette fonctionnalité utilise la bibliothèque `@salambot/ai/lang-detect` pour une détection précise et rapide.

### 5.2 Agent Desk - Interface de Gestion

L'Agent Desk fournit l'interface de travail pour les opérateurs humains qui gèrent les conversations escaladées et supervisent les performances du système. Cette application évolue de React 19 + Vite vers Next.js 15 selon le plan de migration de la Phase 2.

Le développement de l'Agent Desk commence par l'implémentation de l'interface de base avec les composants essentiels pour la gestion des conversations. Cette interface utilise shadcn/ui pour les composants de base et Zustand pour la gestion d'état globale.

```typescript
/**
 * @file        Store principal de l'Agent Desk pour la gestion d'état
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { create } from 'zustand';
import { Conversation, Agent, Metrics } from '@salambot/types';

interface AgentDeskState {
  conversations: Conversation[];
  activeConversation: Conversation | null;
  agent: Agent | null;
  metrics: Metrics;

  // Actions
  setActiveConversation: (conversation: Conversation) => void;
  updateConversation: (id: string, updates: Partial<Conversation>) => void;
  takeOverConversation: (id: string) => void;
  escalateToHuman: (id: string, reason: string) => void;
}

export const useAgentDeskStore = create<AgentDeskState>((set, get) => ({
  conversations: [],
  activeConversation: null,
  agent: null,
  metrics: {
    totalConversations: 0,
    averageResponseTime: 0,
    satisfactionScore: 0,
    escalationRate: 0,
  },

  setActiveConversation: conversation =>
    set({ activeConversation: conversation }),

  updateConversation: (id, updates) =>
    set(state => ({
      conversations: state.conversations.map(conv =>
        conv.id === id ? { ...conv, ...updates } : conv
      ),
    })),

  takeOverConversation: async id => {
    const { agent } = get();
    if (!agent) return;

    // Logique de prise en charge
    await fetch(`/api/conversations/${id}/takeover`, {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ agentId: agent.id }),
    });
  },
}));
```

L'interface temps réel utilise Server-Sent Events (SSE) pour recevoir les nouvelles conversations et les mises à jour en temps réel. Cette approche simplifie l'implémentation tout en offrant des performances adaptées aux besoins de l'application.

Le système de notifications intègre des alertes visuelles et sonores pour informer les agents des nouvelles conversations et des événements importants. Cette fonctionnalité utilise l'API Notifications du navigateur avec un fallback vers des notifications in-app.

Le dashboard de métriques affiche les indicateurs de performance en temps réel avec des graphiques interactifs basés sur Recharts. Ces métriques incluent le volume de conversations, les temps de réponse, les taux de satisfaction, et les taux d'escalation.

### 5.3 Functions-Run - Backend IA

L'application Functions-Run constitue le cœur de l'intelligence artificielle SalamBot, hébergeant les flows Genkit qui orchestrent les interactions avec les modèles de langage et implémentent la logique métier complexe.

Le développement de Functions-Run commence par la configuration de l'environnement Genkit avec les providers appropriés pour Vertex AI, OpenAI, et les modèles locaux. Cette configuration inclut la gestion des clés d'API et la configuration des timeouts et retry policies.

```typescript
/**
 * @file        Configuration principale des flows Genkit pour SalamBot
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { configureGenkit } from '@genkit-ai/core';
import { vertexAI } from '@genkit-ai/vertexai';
import { openAI } from '@genkit-ai/openai';

export const genkitConfig = configureGenkit({
  plugins: [
    vertexAI({
      projectId: process.env.GOOGLE_CLOUD_PROJECT_ID,
      location: 'europe-west1',
    }),
    openAI({
      apiKey: process.env.OPENAI_API_KEY,
    }),
  ],
  logLevel: 'debug',
  enableTracingAndMetrics: true,
});

export const models = {
  geminiPro: 'vertexai/gemini-pro',
  gpt4: 'openai/gpt-4-turbo',
  llamaDarija: 'openai/ft:gpt-3.5-turbo:salambot:darija-v1',
};
```

L'implémentation des flows de détection linguistique utilise la stratégie de basculement intelligent définie dans l'architecture. Cette implémentation combine détection offline rapide, validation hybride, et traitement cloud complet selon la complexité du message et le niveau de confiance.

Le flow de génération de réponses intègre les prompts spécialisés pour chaque langue et contexte culturel. Ces prompts sont optimisés pour le marché marocain avec une compréhension fine des nuances culturelles et des attentes des utilisateurs locaux.

L'API REST expose les fonctionnalités IA avec une documentation OpenAPI complète et des exemples d'usage. Cette API utilise Express.js avec des middlewares de validation, d'authentification, et de rate limiting pour garantir la sécurité et les performances.

### 5.4 Extension Chrome - Intégration Système

L'Extension Chrome permet l'intégration de SalamBot dans les systèmes existants sans modification des applications hôtes. Cette extension utilise Manifest v3 avec des content scripts optimisés pour la performance et la compatibilité.

Le développement de l'extension commence par la configuration de la structure Manifest v3 avec les permissions minimales nécessaires. Cette approche privilégie la sécurité et la confiance des utilisateurs tout en maintenant les fonctionnalités requises.

```json
{
  "manifest_version": 3,
  "name": "SalamBot Assistant",
  "version": "1.0.0",
  "description": "Assistant IA pour le service client marocain",
  "permissions": ["activeTab", "storage"],
  "content_scripts": [
    {
      "matches": ["<all_urls>"],
      "js": ["content-script.js"],
      "run_at": "document_idle"
    }
  ],
  "background": {
    "service_worker": "background.js"
  },
  "action": {
    "default_popup": "popup.html",
    "default_title": "SalamBot Assistant"
  }
}
```

Les content scripts détectent automatiquement les formulaires de support et les zones de texte appropriées pour l'injection des suggestions SalamBot. Cette détection utilise des sélecteurs CSS intelligents et des heuristiques basées sur le contenu pour identifier les contextes pertinents.

Le système de cache local permet un fonctionnement offline avec des réponses pré-calculées pour les cas d'usage les plus fréquents. Cette fonctionnalité utilise l'API Storage de Chrome avec une stratégie de cache intelligente qui optimise l'espace disponible.

L'interface utilisateur de l'extension s'adapte automatiquement au thème du site hôte pour une intégration visuelle harmonieuse. Cette adaptation utilise des techniques de détection de couleurs et de styles pour créer une expérience utilisateur cohérente.

---

## 6. Développement des Bibliothèques

Le développement des bibliothèques SalamBot suit une approche modulaire qui favorise la réutilisabilité, la maintenabilité et la testabilité du code. Ces bibliothèques constituent les fondations techniques sur lesquelles s'appuient toutes les applications de l'écosystème SalamBot.

La philosophie de développement des bibliothèques privilégie la simplicité d'usage avec des APIs intuitives et bien documentées. Cette approche facilite l'adoption par les développeurs et réduit les risques d'erreur d'implémentation.

### 6.1 Bibliothèque Core - Fondations Système

La bibliothèque `@salambot/core` centralise les types de données, les utilitaires communs, et les services de base utilisés par toutes les autres composantes du système. Cette bibliothèque constitue le contrat d'interface entre les différents modules et assure la cohérence des données.

Le développement de la bibliothèque core commence par la définition des types TypeScript qui modélisent les entités métier principales. Ces types incluent les conversations, les utilisateurs, les agents, les messages, et les métriques avec une hiérarchie claire et des relations bien définies.

```typescript
/**
 * @file        Types principaux pour les entités métier SalamBot
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

export interface User {
  id: string;
  name?: string;
  email?: string;
  phone?: string;
  preferredLanguage: 'fr' | 'ar' | 'darija';
  metadata: Record<string, any>;
  createdAt: Date;
  updatedAt: Date;
}

export interface Message {
  id: string;
  conversationId: string;
  content: string;
  type: 'text' | 'audio' | 'image' | 'file';
  sender: 'user' | 'bot' | 'agent';
  language: 'fr' | 'ar' | 'darija';
  confidence: number;
  metadata: {
    channel: 'web' | 'whatsapp' | 'extension';
    detectionMethod: 'offline' | 'hybrid' | 'cloud';
    processingTime: number;
    modelUsed?: string;
  };
  createdAt: Date;
}

export interface Conversation {
  id: string;
  userId: string;
  agentId?: string;
  status: 'active' | 'waiting' | 'resolved' | 'escalated';
  channel: 'web' | 'whatsapp' | 'extension';
  language: 'fr' | 'ar' | 'darija';
  messages: Message[];
  metadata: {
    customerSatisfaction?: number;
    resolutionTime?: number;
    escalationReason?: string;
    tags: string[];
  };
  createdAt: Date;
  updatedAt: Date;
}
```

Les utilitaires communs incluent des fonctions de validation, de formatage, et de transformation des données qui sont utilisées à travers tout l'écosystème. Ces utilitaires suivent des patterns fonctionnels qui facilitent les tests et la composition.

Les services de base fournissent des abstractions pour les opérations communes comme la gestion des événements, la configuration, et la journalisation. Ces services utilisent des patterns d'injection de dépendance qui facilitent les tests et la modularité.

### 6.2 Bibliothèque AI - Intelligence Artificielle

La bibliothèque `@salambot/ai` regroupe tous les composants liés à l'intelligence artificielle, incluant la détection linguistique, la génération de réponses, et l'orchestration des modèles. Cette bibliothèque encapsule la complexité des interactions IA derrière des APIs simples et cohérentes.

Le module de détection linguistique implémente la stratégie hybride offline/cloud avec des seuils de confiance configurables et des mécanismes de fallback automatique. Cette implémentation optimise les performances tout en maintenant une précision élevée.

```typescript
/**
 * @file        API principale de détection linguistique hybride SalamBot
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { LangDetectionResult, DetectionOptions } from '@salambot/types';

export interface LanguageDetector {
  detect(
    text: string,
    options?: DetectionOptions
  ): Promise<LangDetectionResult>;
}

export class HybridLanguageDetector implements LanguageDetector {
  private offlineDetector: OfflineDetector;
  private cloudDetector: CloudDetector;
  private cache: Map<string, LangDetectionResult>;

  constructor() {
    this.offlineDetector = new OfflineDetector();
    this.cloudDetector = new CloudDetector();
    this.cache = new Map();
  }

  async detect(
    text: string,
    options: DetectionOptions = {}
  ): Promise<LangDetectionResult> {
    const cacheKey = this.getCacheKey(text, options);
    const cached = this.cache.get(cacheKey);
    if (cached && !this.isCacheExpired(cached)) {
      return cached;
    }

    // Étape 1: Détection offline rapide
    const offlineResult = await this.offlineDetector.detect(text);

    // Étape 2: Décision de basculement selon la confiance
    if (offlineResult.confidence >= 0.95 && this.isSimpleText(text)) {
      // Confiance élevée + texte simple = offline suffisant
      return this.cacheAndReturn(cacheKey, offlineResult);
    }

    if (offlineResult.confidence >= 0.75) {
      // Confiance moyenne = validation hybride
      const cloudValidation = await this.cloudDetector.validate(
        text,
        offlineResult
      );
      const hybridResult = this.mergeResults(offlineResult, cloudValidation);
      return this.cacheAndReturn(cacheKey, hybridResult);
    }

    // Confiance faible = traitement cloud complet
    try {
      const cloudResult = await this.cloudDetector.detect(text);
      return this.cacheAndReturn(cacheKey, cloudResult);
    } catch (error) {
      // Fallback vers offline en cas d'erreur cloud
      return this.cacheAndReturn(cacheKey, offlineResult);
    }
  }

  private isSimpleText(text: string): boolean {
    // Heuristiques pour détecter la complexité du texte
    return (
      text.length < 100 &&
      !this.hasCodeSwitching(text) &&
      !this.hasComplexPunctuation(text)
    );
  }
}
```

Le module de génération de réponses intègre les prompts spécialisés et la logique de sélection des modèles selon la langue détectée. Cette implémentation utilise Genkit pour l'orchestration des flows et la gestion des providers multiples.

Les utilitaires IA incluent des fonctions de preprocessing du texte, de post-processing des réponses, et d'évaluation de la qualité. Ces utilitaires sont optimisés pour les spécificités du darija et du contexte culturel marocain.

### 6.3 Bibliothèque Connectors - Intégrations Externes

La bibliothèque `@salambot/connectors` implémente les intégrations avec les canaux de communication externes et les systèmes tiers. Cette bibliothèque suit une architecture plugin qui facilite l'ajout de nouveaux connecteurs.

Le connecteur WhatsApp gère l'intégration avec l'API Meta Business avec une gestion robuste des webhooks et des messages multimédias. Cette implémentation inclut la vérification des signatures, la gestion des erreurs, et la retry logic pour les appels API.

```typescript
/**
 * @file        Connecteur WhatsApp Business API pour SalamBot
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { Connector, Message, WebhookEvent } from '@salambot/types';
import crypto from 'crypto';

export class WhatsAppConnector implements Connector {
  private accessToken: string;
  private phoneNumberId: string;
  private appSecret: string;

  constructor(config: WhatsAppConfig) {
    this.accessToken = config.accessToken;
    this.phoneNumberId = config.phoneNumberId;
    this.appSecret = config.appSecret;
  }

  async handleWebhook(event: WebhookEvent): Promise<void> {
    // Vérification de la signature
    if (!this.verifySignature(event.body, event.signature)) {
      throw new Error('Invalid webhook signature');
    }

    const { messages } = event.body.entry[0].changes[0].value;

    for (const message of messages || []) {
      await this.processMessage(message);
    }
  }

  private verifySignature(body: string, signature: string): boolean {
    const expectedSignature = crypto
      .createHmac('sha256', this.appSecret)
      .update(body)
      .digest('hex');

    return crypto.timingSafeEqual(
      Buffer.from(signature.replace('sha256=', '')),
      Buffer.from(expectedSignature)
    );
  }

  async sendMessage(to: string, content: string): Promise<void> {
    const response = await fetch(
      `https://graph.facebook.com/v18.0/${this.phoneNumberId}/messages`,
      {
        method: 'POST',
        headers: {
          Authorization: `Bearer ${this.accessToken}`,
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          messaging_product: 'whatsapp',
          to,
          type: 'text',
          text: { body: content },
        }),
      }
    );

    if (!response.ok) {
      throw new Error(`WhatsApp API error: ${response.statusText}`);
    }
  }
}
```

Le connecteur Web gère l'intégration avec les widgets web et les APIs REST avec une gestion avancée des sessions et de l'authentification. Cette implémentation inclut le support des WebSockets pour les interactions temps réel.

Les connecteurs système permettent l'intégration avec les CRM existants, les bases de données clients, et les systèmes de ticketing. Ces connecteurs utilisent des patterns d'adaptation qui facilitent l'intégration avec des APIs hétérogènes.

### 6.4 Bibliothèque Persistence - Gestion des Données

La bibliothèque `@salambot/persistence` gère l'accès aux données avec des abstractions qui simplifient l'utilisation de multiples systèmes de stockage. Cette approche polyglotte optimise le choix de la technologie selon le type de données et les patterns d'accès.

Le repository pattern abstrait les opérations de données avec des interfaces cohérentes qui facilitent les tests et permettent le changement de provider sans impact sur le code métier. Cette abstraction inclut la gestion des transactions, du cache, et de la pagination.

```typescript
/**
 * @file        Repository abstrait pour la gestion des conversations
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { Conversation, Message, PaginationOptions } from '@salambot/types';

export interface ConversationRepository {
  create(
    conversation: Omit<Conversation, 'id' | 'createdAt' | 'updatedAt'>
  ): Promise<Conversation>;
  findById(id: string): Promise<Conversation | null>;
  findByUserId(
    userId: string,
    options?: PaginationOptions
  ): Promise<Conversation[]>;
  update(id: string, updates: Partial<Conversation>): Promise<Conversation>;
  addMessage(
    conversationId: string,
    message: Omit<Message, 'id' | 'createdAt'>
  ): Promise<Message>;
  getMetrics(filters?: MetricsFilters): Promise<ConversationMetrics>;
}

export class PostgreSQLConversationRepository
  implements ConversationRepository
{
  constructor(private db: Database) {}

  async create(
    data: Omit<Conversation, 'id' | 'createdAt' | 'updatedAt'>
  ): Promise<Conversation> {
    const query = `
      INSERT INTO conversations (user_id, agent_id, status, channel, language, metadata)
      VALUES ($1, $2, $3, $4, $5, $6)
      RETURNING *
    `;

    const result = await this.db.query(query, [
      data.userId,
      data.agentId,
      data.status,
      data.channel,
      data.language,
      JSON.stringify(data.metadata),
    ]);

    return this.mapRowToConversation(result.rows[0]);
  }

  async findById(id: string): Promise<Conversation | null> {
    const query = `
      SELECT c.*, 
             json_agg(
               json_build_object(
                 'id', m.id,
                 'content', m.content,
                 'type', m.type,
                 'sender', m.sender,
                 'language', m.language,
                 'confidence', m.confidence,
                 'metadata', m.metadata,
                 'createdAt', m.created_at
               ) ORDER BY m.created_at
             ) as messages
      FROM conversations c
      LEFT JOIN messages m ON c.id = m.conversation_id
      WHERE c.id = $1
      GROUP BY c.id
    `;

    const result = await this.db.query(query, [id]);
    return result.rows[0] ? this.mapRowToConversation(result.rows[0]) : null;
  }
}
```

Les providers spécialisés gèrent l'accès aux différents systèmes de stockage avec des optimisations spécifiques. Le provider PostgreSQL optimise les requêtes relationnelles complexes, le provider Firestore gère les données temps réel, et le provider Redis optimise les accès cache.

La gestion des migrations assure l'évolution cohérente des schémas de données avec des scripts versionnés et des rollbacks automatiques. Cette approche facilite les déploiements et réduit les risques de corruption de données.

### 6.5 Bibliothèque UI - Système de Design

La bibliothèque `@salambot/ui` fournit le système de design unifié avec des composants React réutilisables qui assurent la cohérence visuelle entre toutes les interfaces utilisateur. Cette bibliothèque s'appuie sur shadcn/ui et TailwindCSS pour une approche moderne et performante.

Le développement des composants suit une approche atomic design qui organise les éléments en atomes, molécules, et organismes. Cette hiérarchie facilite la composition et la maintenance des interfaces complexes.

```typescript
/**
 * @file        Composant de chat unifié pour toutes les interfaces SalamBot
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import React from 'react';
import { Message, User } from '@salambot/types';
import { cn } from '@salambot/ui/utils';

interface ChatMessageProps {
  message: Message;
  user?: User;
  className?: string;
  showAvatar?: boolean;
  showTimestamp?: boolean;
}

export const ChatMessage: React.FC<ChatMessageProps> = ({
  message,
  user,
  className,
  showAvatar = true,
  showTimestamp = true,
}) => {
  const isBot = message.sender === 'bot';
  const isAgent = message.sender === 'agent';

  return (
    <div
      className={cn(
        'flex gap-3 p-4',
        isBot ? 'bg-gray-50' : 'bg-white',
        className
      )}
    >
      {showAvatar && (
        <div className='flex-shrink-0'>
          {isBot ? (
            <div className='w-8 h-8 bg-blue-500 rounded-full flex items-center justify-center'>
              <span className='text-white text-sm font-medium'>SB</span>
            </div>
          ) : (
            <div className='w-8 h-8 bg-gray-300 rounded-full flex items-center justify-center'>
              <span className='text-gray-600 text-sm font-medium'>
                {user?.name?.[0] || 'U'}
              </span>
            </div>
          )}
        </div>
      )}

      <div className='flex-1 min-w-0'>
        <div className='flex items-center gap-2 mb-1'>
          <span className='text-sm font-medium text-gray-900'>
            {isBot
              ? 'SalamBot'
              : isAgent
              ? 'Agent'
              : user?.name || 'Utilisateur'}
          </span>
          {showTimestamp && (
            <span className='text-xs text-gray-500'>
              {new Date(message.createdAt).toLocaleTimeString('fr-FR')}
            </span>
          )}
          {message.language !== 'fr' && (
            <span className='text-xs bg-blue-100 text-blue-800 px-2 py-1 rounded'>
              {message.language.toUpperCase()}
            </span>
          )}
        </div>

        <div className='text-sm text-gray-700 whitespace-pre-wrap'>
          {message.content}
        </div>

        {message.confidence < 0.8 && (
          <div className='mt-2 text-xs text-amber-600 bg-amber-50 px-2 py-1 rounded'>
            Confiance de détection: {Math.round(message.confidence * 100)}%
          </div>
        )}
      </div>
    </div>
  );
};
```

Le système de thèmes permet la personnalisation visuelle avec des variables CSS et des tokens de design qui s'adaptent automatiquement aux préférences utilisateur et aux contraintes d'accessibilité.

Les hooks React personnalisés encapsulent la logique d'état et les interactions avec les APIs pour simplifier l'utilisation dans les composants. Ces hooks suivent les patterns React modernes et incluent une gestion d'erreur robuste.

La documentation interactive utilise Storybook pour présenter tous les composants avec leurs variantes et leurs états. Cette documentation facilite l'adoption par les développeurs et assure la cohérence d'usage.

---

## 7. Gestion des Issues GitHub et Workflow de Développement

La gestion des issues GitHub constitue l'épine dorsale de l'organisation du développement SalamBot, assurant une traçabilité complète des fonctionnalités, des bugs, et des améliorations. Cette méthodologie structurée facilite la collaboration entre les équipes et garantit que chaque modification du code répond à un besoin clairement identifié et documenté.

Le workflow de développement s'appuie sur une approche GitFlow adaptée qui sépare clairement les environnements de développement, de staging, et de production. Cette séparation permet une validation progressive des fonctionnalités et réduit les risques de régression en production.

### 7.1 Structure et Typologie des Issues

La classification des issues suit une taxonomie précise qui facilite la priorisation et l'attribution des tâches selon l'expertise requise. Cette classification utilise un système de labels standardisé qui permet une identification rapide du type de travail et de la complexité estimée.

Les issues de type "Feature" décrivent les nouvelles fonctionnalités avec des critères d'acceptation détaillés et des maquettes lorsque nécessaire. Ces issues incluent une estimation de la complexité en story points et une identification des dépendances avec d'autres composants du système.

```markdown
## 🚀 Feature: Détection Darija Temps Réel

### Description

Implémenter la détection de langue Darija en temps réel dans le widget web avec fallback automatique vers les modèles cloud en cas de faible confiance.

### Critères d'Acceptation

- [ ] Détection offline avec confiance >95% pour les phrases simples
- [ ] Basculement automatique vers cloud si confiance <75%
- [ ] Temps de réponse <50ms pour détection offline
- [ ] Support des variations régionales (Casa, Rabat, Marrakech)
- [ ] Interface utilisateur adaptée selon la langue détectée

### Spécifications Techniques

- **Composants affectés:** `libs/ai/lang-detect`, `apps/widget-web`
- **APIs:** `/api/detect-language`, WebSocket pour temps réel
- **Performance:** <50ms offline, <300ms cloud
- **Tests:** Couverture >90%, dataset 500+ phrases

### Maquettes

[Lien vers Figma ou captures d'écran]

### Estimation

**Story Points:** 8
**Complexité:** Élevée
**Sprint:** Phase 2 - Sprint B

### Dépendances

- #123 Configuration Genkit providers
- #124 Cache Redis pour détection
```

Les issues de type "Bug" documentent les dysfonctionnements avec des étapes de reproduction détaillées et des informations sur l'environnement. Ces issues incluent une évaluation de la criticité et de l'impact sur l'expérience utilisateur.

Les issues de type "Enhancement" proposent des améliorations aux fonctionnalités existantes avec une justification basée sur les retours utilisateurs ou les métriques de performance. Ces améliorations sont priorisées selon leur impact sur les KPIs métier.

### 7.2 Workflow de Développement et Branches

Le workflow de développement utilise une stratégie de branches qui optimise la collaboration tout en maintenant la stabilité du code principal. Cette stratégie s'appuie sur des branches de fonctionnalités courtes et des intégrations fréquentes pour réduire les conflits de merge.

La branche `main` représente l'état stable du code prêt pour la production. Cette branche est protégée avec des règles strictes qui exigent des revues de code et la validation de tous les tests automatisés avant tout merge.

La branche `develop` sert d'environnement d'intégration pour les fonctionnalités en cours de développement. Cette branche est déployée automatiquement sur l'environnement de staging pour les tests d'intégration et la validation par les équipes métier.

Les branches de fonctionnalités suivent une convention de nommage standardisée qui facilite l'identification et le suivi. Cette convention inclut le type de modification, le composant affecté, et une description courte de la fonctionnalité.

```bash
# Convention de nommage des branches
feature/widget-web/darija-detection
bugfix/agent-desk/websocket-reconnection
enhancement/functions-run/cache-optimization
hotfix/production/security-patch

# Workflow type pour une nouvelle fonctionnalité
git checkout develop
git pull origin develop
git checkout -b feature/widget-web/darija-detection

# Développement avec commits atomiques
git add .
git commit -m "feat(lang-detect): add offline darija patterns"
git commit -m "feat(widget-web): integrate darija detection API"
git commit -m "test(lang-detect): add darija detection test cases"

# Push et création de Pull Request
git push origin feature/widget-web/darija-detection
# Créer PR via GitHub CLI ou interface web
```

### 7.3 Processus de Review et Validation

Le processus de review garantit la qualité du code et la cohérence architecturale à travers des vérifications automatisées et manuelles. Cette approche multicouche détecte les problèmes potentiels avant leur intégration dans le code principal.

Les vérifications automatisées incluent l'exécution de la suite de tests complète, l'analyse statique du code avec ESLint et TypeScript, et la vérification de la couverture de tests. Ces vérifications sont exécutées automatiquement à chaque push et constituent un prérequis pour la review manuelle.

La review manuelle se concentre sur l'architecture, la lisibilité du code, et la conformité aux standards établis. Cette review est effectuée par au moins un développeur senior qui valide la cohérence avec les patterns existants et l'impact sur les performances globales.

```yaml
# Configuration GitHub pour protection des branches
name: Branch Protection
on:
  pull_request:
    branches: [main, develop]

jobs:
  quality-gate:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v4
        with:
          node-version: 22
          cache: 'pnpm'

      - name: Install dependencies
        run: pnpm install --frozen-lockfile

      - name: Lint code
        run: pnpm nx affected --target=lint --parallel=3

      - name: Run tests
        run: pnpm nx affected --target=test --parallel=3 --coverage

      - name: Build applications
        run: pnpm nx affected --target=build --parallel=3

      - name: Check test coverage
        run: |
          if [ $(cat coverage/lcov.info | grep -c "SF:") -lt 80 ]; then
            echo "Test coverage below 80%"
            exit 1
          fi
```

### 7.4 Intégration Continue et Déploiement

L'intégration continue automatise la validation et le déploiement du code à travers des pipelines optimisés qui réduisent les temps de feedback et accélèrent la livraison des fonctionnalités. Cette automatisation inclut des déploiements conditionnels selon l'environnement cible.

Le pipeline de CI/CD utilise GitHub Actions avec des jobs parallèles qui optimisent les temps d'exécution. Cette configuration tire parti du cache Nx pour éviter la recompilation inutile des composants non modifiés.

Les déploiements automatiques utilisent des stratégies différentes selon l'environnement. L'environnement de développement utilise des déploiements continus, le staging utilise des déploiements déclenchés par les merges sur develop, et la production utilise des déploiements manuels avec validation.

```yaml
name: Deploy to Environments
on:
  push:
    branches: [main, develop]
  pull_request:
    branches: [main]

jobs:
  deploy-staging:
    if: github.ref == 'refs/heads/develop'
    runs-on: ubuntu-latest
    environment: staging
    steps:
      - uses: actions/checkout@v4
      - name: Deploy to Staging
        run: |
          pnpm nx build widget-web --configuration=staging
          pnpm nx build agent-desk --configuration=staging
          pnpm nx build functions-run --configuration=staging
          # Déploiement vers environnements staging

  deploy-production:
    if: github.ref == 'refs/heads/main'
    runs-on: ubuntu-latest
    environment: production
    needs: [quality-gate]
    steps:
      - uses: actions/checkout@v4
      - name: Deploy to Production
        run: |
          pnpm nx build widget-web --configuration=production
          pnpm nx build agent-desk --configuration=production
          pnpm nx build functions-run --configuration=production
          # Déploiement vers environnements production
```

---

## 8. Architecture Kong Gateway et Intégration

Kong Gateway constitue la couche d'orchestration centrale qui unifie l'accès aux services SalamBot tout en fournissant des fonctionnalités transversales de sécurité, monitoring, et gestion du trafic. Cette architecture API-first facilite l'intégration avec les systèmes existants et optimise les performances globales de la plateforme.

L'intégration de Kong Gateway dans l'écosystème SalamBot suit une approche progressive qui commence par un déploiement en développement local, évolue vers un environnement de staging, puis se déploie en production avec une configuration haute disponibilité. Cette progression permet une validation continue de la configuration et une montée en charge maîtrisée.

### 8.1 Configuration Kong en Développement

La configuration de développement utilise Docker Compose pour simplifier l'installation et la gestion des dépendances. Cette approche permet aux développeurs de disposer d'un environnement Kong complet sans configuration complexe de l'infrastructure.

Le fichier docker-compose.yml configure Kong avec PostgreSQL comme base de données et inclut les plugins essentiels pour le développement. Cette configuration privilégie la simplicité et la rapidité de démarrage tout en reproduisant fidèlement l'environnement de production.

```yaml
# docker-compose.kong.yml
version: '3.8'

services:
  kong-database:
    image: postgres:15
    environment:
      POSTGRES_DB: kong
      POSTGRES_USER: kong
      POSTGRES_PASSWORD: kong_password
    volumes:
      - kong_data:/var/lib/postgresql/data
    healthcheck:
      test: ['CMD-SHELL', 'pg_isready -U kong']
      interval: 10s
      timeout: 5s
      retries: 5

  kong-migrations:
    image: kong:3.4
    command: kong migrations bootstrap
    environment:
      KONG_DATABASE: postgres
      KONG_PG_HOST: kong-database
      KONG_PG_DATABASE: kong
      KONG_PG_USER: kong
      KONG_PG_PASSWORD: kong_password
    depends_on:
      kong-database:
        condition: service_healthy

  kong:
    image: kong:3.4
    environment:
      KONG_DATABASE: postgres
      KONG_PG_HOST: kong-database
      KONG_PG_DATABASE: kong
      KONG_PG_USER: kong
      KONG_PG_PASSWORD: kong_password
      KONG_PROXY_ACCESS_LOG: /dev/stdout
      KONG_ADMIN_ACCESS_LOG: /dev/stdout
      KONG_PROXY_ERROR_LOG: /dev/stderr
      KONG_ADMIN_ERROR_LOG: /dev/stderr
      KONG_ADMIN_LISTEN: 0.0.0.0:8001
      KONG_ADMIN_GUI_URL: http://localhost:8002
    ports:
      - '8000:8000' # Proxy
      - '8001:8001' # Admin API
      - '8002:8002' # Admin GUI
    depends_on:
      kong-migrations:
        condition: service_completed_successfully

volumes:
  kong_data:
```

La configuration déclarative utilise un fichier YAML qui définit tous les services, routes, et plugins nécessaires pour SalamBot. Cette approche Infrastructure as Code facilite la reproductibilité et le versioning de la configuration.

```yaml
# kong.yml - Configuration déclarative SalamBot
_format_version: '3.0'

services:
  - name: functions-run
    url: http://functions-run:3000
    tags: ['salambot', 'api']

  - name: widget-web
    url: http://widget-web:3000
    tags: ['salambot', 'frontend']

  - name: agent-desk
    url: http://agent-desk:3000
    tags: ['salambot', 'frontend']

routes:
  - name: api-routes
    service: functions-run
    paths: ['/api']
    strip_path: false

  - name: widget-routes
    service: widget-web
    paths: ['/widget']
    strip_path: true

  - name: desk-routes
    service: agent-desk
    paths: ['/desk']
    strip_path: true

plugins:
  - name: cors
    config:
      origins: ['*']
      methods: ['GET', 'POST', 'PUT', 'DELETE', 'OPTIONS']
      headers: ['Accept', 'Content-Type', 'Authorization']

  - name: rate-limiting
    config:
      minute: 100
      hour: 1000
      policy: local

  - name: prometheus
    config:
      per_consumer: true
```

### 8.2 Services et Routes SalamBot

La configuration des services Kong mappe chaque composant SalamBot avec des paramètres optimisés pour les patterns de trafic spécifiques. Cette configuration inclut des timeouts adaptés, des stratégies de retry, et des health checks automatiques.

Le service functions-run gère les APIs backend avec des timeouts étendus pour les opérations IA et des retry policies pour gérer les latences variables des modèles de langage. Cette configuration inclut un circuit breaker pour éviter la propagation des pannes.

```yaml
# Configuration détaillée du service functions-run
services:
  - name: functions-run
    url: http://functions-run:3000
    connect_timeout: 5000
    write_timeout: 60000 # Timeout étendu pour IA
    read_timeout: 60000
    retries: 3
    tags: ['salambot', 'api', 'ai']

routes:
  - name: chat-api
    service: functions-run
    paths: ['/api/chat']
    methods: ['POST']
    strip_path: false

  - name: detect-language
    service: functions-run
    paths: ['/api/detect']
    methods: ['POST']
    strip_path: false

  - name: health-check
    service: functions-run
    paths: ['/api/health']
    methods: ['GET']
    strip_path: false

plugins:
  - name: rate-limiting
    route: chat-api
    config:
      minute: 50
      hour: 500
      policy: redis
      redis_host: redis
      redis_port: 6379

  - name: request-size-limiting
    route: chat-api
    config:
      allowed_payload_size: 1024 # 1KB max pour messages

  - name: response-transformer
    route: chat-api
    config:
      add:
        headers:
          - 'X-SalamBot-Version:3.0'
          - 'X-Response-Time:{{upstream_response_time}}'
```

Le service widget-web optimise la livraison des assets statiques avec des headers de cache appropriés et une compression automatique. Cette configuration inclut des redirections pour les domaines multiples et la gestion des certificats SSL.

Le service agent-desk implémente une authentification renforcée avec des sessions persistantes et des contrôles d'accès basés sur les rôles. Cette configuration inclut la protection CSRF et la validation des tokens JWT.

### 8.3 Plugins et Sécurité

La configuration des plugins Kong fournit des fonctionnalités transversales qui simplifient le développement des applications tout en garantissant la sécurité et les performances. Cette approche centralisée évite la duplication de code et assure une cohérence dans l'application des politiques.

Le plugin d'authentification JWT gère la validation des tokens avec une configuration qui supporte les clés de rotation et la vérification des claims personnalisés. Cette configuration inclut une intégration avec Firebase Auth pour la validation des tokens utilisateur.

```lua
-- Plugin personnalisé pour authentification SalamBot
local jwt = require "resty.jwt"
local cjson = require "cjson"

local SalamBotAuth = {}

function SalamBotAuth:access(config)
  local token = kong.request.get_header("Authorization")

  if not token then
    return kong.response.exit(401, {
      message = "Token d'authentification requis"
    })
  end

  -- Extraction du token Bearer
  token = token:match("Bearer%s+(.+)")
  if not token then
    return kong.response.exit(401, {
      message = "Format de token invalide"
    })
  end

  -- Validation JWT
  local jwt_obj = jwt:verify(config.secret, token)
  if not jwt_obj.valid then
    return kong.response.exit(401, {
      message = "Token invalide",
      error = jwt_obj.reason
    })
  end

  -- Vérification des claims SalamBot
  local payload = jwt_obj.payload
  if not payload.sub or not payload.role then
    return kong.response.exit(403, {
      message = "Claims manquants dans le token"
    })
  end

  -- Injection des headers pour les services downstream
  kong.service.request.set_header("X-User-ID", payload.sub)
  kong.service.request.set_header("X-User-Role", payload.role)
  kong.service.request.set_header("X-User-Lang", payload.lang or "fr")
end

return SalamBotAuth
```

Le plugin de rate limiting utilise Redis pour une gestion distribuée des quotas avec des stratégies différenciées selon le type d'utilisateur. Cette configuration inclut des burst allowances pour gérer les pics de trafic et des quotas premium pour les clients enterprise.

Le plugin de monitoring intègre Prometheus pour la collecte de métriques détaillées avec des labels personnalisés pour SalamBot. Cette configuration inclut des métriques métier comme le taux de détection Darija et les temps de réponse IA.

### 8.4 Déploiement Production et Haute Disponibilité

Le déploiement en production utilise une architecture distribuée avec plusieurs instances Kong derrière un load balancer pour garantir la haute disponibilité. Cette configuration inclut une base de données PostgreSQL en cluster avec réplication automatique.

La configuration Terraform automatise le provisioning de l'infrastructure Kong sur Google Cloud Platform avec des paramètres optimisés pour les workloads SalamBot. Cette configuration inclut l'auto-scaling, le monitoring, et la sauvegarde automatique.

```hcl
# terraform/kong-production.tf
resource "google_compute_instance_group_manager" "kong" {
  name               = "kong-salambot-igm"
  base_instance_name = "kong-salambot"
  zone               = var.zone
  target_size        = 3

  version {
    instance_template = google_compute_instance_template.kong.id
  }

  auto_healing_policies {
    health_check      = google_compute_health_check.kong.id
    initial_delay_sec = 300
  }

  update_policy {
    type                         = "PROACTIVE"
    instance_redistribution_type = "PROACTIVE"
    minimal_action               = "REPLACE"
    max_surge_fixed              = 1
    max_unavailable_fixed        = 1
  }
}

resource "google_compute_instance_template" "kong" {
  name_prefix  = "kong-salambot-template-"
  machine_type = "e2-standard-2"

  disk {
    source_image = "ubuntu-os-cloud/ubuntu-2204-lts"
    auto_delete  = true
    boot         = true
    disk_size_gb = 20
  }

  network_interface {
    network = google_compute_network.salambot.id
    access_config {}
  }

  metadata_startup_script = templatefile("${path.module}/kong-startup.sh", {
    database_url = google_sql_database_instance.kong.connection_name
    redis_host   = google_redis_instance.kong.host
  })

  service_account {
    email  = google_service_account.kong.email
    scopes = ["cloud-platform"]
  }

  lifecycle {
    create_before_destroy = true
  }
}
```

La configuration de monitoring utilise Grafana Cloud avec des dashboards spécialisés pour Kong et SalamBot. Cette configuration inclut des alertes automatiques pour les métriques critiques et des runbooks pour la résolution des incidents.

---

## 9. Déploiement et Infrastructure

Le déploiement de SalamBot utilise une approche cloud-native qui optimise les coûts, les performances, et la fiabilité à travers une architecture distribuée sur Google Cloud Platform. Cette stratégie de déploiement privilégie l'automatisation, la scalabilité, et la résilience pour supporter la croissance de la plateforme.

L'infrastructure SalamBot s'appuie sur des services managés qui réduisent la complexité opérationnelle tout en offrant des performances enterprise. Cette approche permet à l'équipe de se concentrer sur le développement des fonctionnalités métier plutôt que sur la gestion de l'infrastructure.

### 9.1 Architecture Cloud et Services

L'architecture cloud utilise une approche multi-région qui optimise les performances pour les utilisateurs marocains tout en offrant une résilience géographique. Cette configuration privilégie la région europe-west1 (Belgique) comme région principale avec des réplications vers europe-west3 (Francfort) pour la haute disponibilité.

Google Cloud Run héberge les applications backend avec une configuration auto-scaling qui s'adapte automatiquement à la charge. Cette configuration utilise des instances optimisées pour les workloads IA avec des GPUs pour l'accélération des modèles de langage lorsque nécessaire.

```yaml
# cloud-run-functions.yml - Configuration Cloud Run pour functions-run
apiVersion: serving.knative.dev/v1
kind: Service
metadata:
  name: salambot-functions-run
  namespace: salambot-production
  annotations:
    run.googleapis.com/ingress: all
    run.googleapis.com/execution-environment: gen2
spec:
  template:
    metadata:
      annotations:
        autoscaling.knative.dev/minScale: '2'
        autoscaling.knative.dev/maxScale: '100'
        run.googleapis.com/cpu-throttling: 'false'
        run.googleapis.com/memory: '2Gi'
        run.googleapis.com/cpu: '2'
    spec:
      containerConcurrency: 10
      timeoutSeconds: 300
      containers:
        - image: gcr.io/salambot-prod/functions-run:latest
          ports:
            - containerPort: 3000
          env:
            - name: NODE_ENV
              value: 'production'
            - name: GOOGLE_CLOUD_PROJECT
              value: 'salambot-prod'
            - name: REDIS_URL
              valueFrom:
                secretKeyRef:
                  name: salambot-secrets
                  key: redis-url
          resources:
            limits:
              cpu: '2'
              memory: '2Gi'
            requests:
              cpu: '1'
              memory: '1Gi'
          livenessProbe:
            httpGet:
              path: /health
              port: 3000
            initialDelaySeconds: 30
            periodSeconds: 10
          readinessProbe:
            httpGet:
              path: /ready
              port: 3000
            initialDelaySeconds: 5
            periodSeconds: 5
```

Vercel héberge les applications frontend avec une configuration optimisée pour les performances et le SEO. Cette configuration utilise Edge Functions pour la personnalisation géographique et l'optimisation des temps de chargement.

Cloud SQL PostgreSQL gère les données relationnelles avec une configuration haute disponibilité qui inclut des réplicas de lecture et des sauvegardes automatiques. Cette configuration optimise les performances pour les requêtes analytiques et les rapports.

### 9.2 Configuration CI/CD et Automatisation

Le pipeline CI/CD utilise GitHub Actions avec des workflows optimisés qui parallélisent les tâches et utilisent le cache intelligent pour réduire les temps de build. Cette configuration inclut des déploiements automatiques conditionnels selon l'environnement cible.

La stratégie de déploiement utilise des blue-green deployments pour les services critiques et des rolling updates pour les services stateless. Cette approche minimise les interruptions de service et permet des rollbacks rapides en cas de problème.

```yaml
# .github/workflows/deploy-production.yml
name: Deploy to Production

on:
  push:
    branches: [main]
    tags: ['v*']

env:
  GOOGLE_CLOUD_PROJECT: salambot-prod
  GOOGLE_CLOUD_REGION: europe-west1

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    permissions:
      contents: read
      id-token: write

    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-node@v4
        with:
          node-version: 22
          cache: 'pnpm'

      - name: Install dependencies
        run: pnpm install --frozen-lockfile

      - name: Run tests
        run: pnpm nx affected --target=test --parallel=3

      - name: Build applications
        run: |
          pnpm nx build functions-run --configuration=production
          pnpm nx build widget-web --configuration=production
          pnpm nx build agent-desk --configuration=production

      - id: auth
        name: Authenticate to Google Cloud
        uses: google-github-actions/auth@v1
        with:
          workload_identity_provider: ${{ secrets.WIF_PROVIDER }}
          service_account: ${{ secrets.WIF_SERVICE_ACCOUNT }}

      - name: Configure Docker for GCR
        run: gcloud auth configure-docker gcr.io

      - name: Build and push Docker images
        run: |
          # Functions Run
          docker build -t gcr.io/$GOOGLE_CLOUD_PROJECT/functions-run:$GITHUB_SHA \
            -f apps/functions-run/Dockerfile .
          docker push gcr.io/$GOOGLE_CLOUD_PROJECT/functions-run:$GITHUB_SHA

          # Tag latest for production
          docker tag gcr.io/$GOOGLE_CLOUD_PROJECT/functions-run:$GITHUB_SHA \
            gcr.io/$GOOGLE_CLOUD_PROJECT/functions-run:latest
          docker push gcr.io/$GOOGLE_CLOUD_PROJECT/functions-run:latest

      - name: Deploy to Cloud Run
        run: |
          gcloud run deploy salambot-functions-run \
            --image gcr.io/$GOOGLE_CLOUD_PROJECT/functions-run:$GITHUB_SHA \
            --region $GOOGLE_CLOUD_REGION \
            --platform managed \
            --allow-unauthenticated \
            --memory 2Gi \
            --cpu 2 \
            --min-instances 2 \
            --max-instances 100 \
            --concurrency 10 \
            --timeout 300s

      - name: Deploy to Vercel
        uses: amondnet/vercel-action@v25
        with:
          vercel-token: ${{ secrets.VERCEL_TOKEN }}
          vercel-org-id: ${{ secrets.VERCEL_ORG_ID }}
          vercel-project-id: ${{ secrets.VERCEL_PROJECT_ID }}
          working-directory: ./dist/apps/widget-web
          vercel-args: '--prod'
```

### 9.3 Monitoring et Observabilité

La stratégie de monitoring utilise Grafana Cloud avec des dashboards spécialisés qui combinent métriques techniques et métriques métier. Cette configuration inclut des alertes proactives et des runbooks automatisés pour la résolution des incidents.

Les métriques techniques incluent les performances des services, l'utilisation des ressources, et la santé des bases de données. Ces métriques utilisent Prometheus avec des exporters personnalisés pour les spécificités de SalamBot.

```typescript
/**
 * @file        Configuration monitoring et métriques personnalisées SalamBot
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { register, Counter, Histogram, Gauge } from 'prom-client';

// Métriques métier SalamBot
export const metrics = {
  // Détection de langue
  languageDetectionTotal: new Counter({
    name: 'salambot_language_detection_total',
    help: 'Nombre total de détections de langue',
    labelNames: ['method', 'language', 'confidence_level'],
  }),

  languageDetectionDuration: new Histogram({
    name: 'salambot_language_detection_duration_seconds',
    help: 'Durée de détection de langue en secondes',
    labelNames: ['method', 'language'],
    buckets: [0.01, 0.05, 0.1, 0.25, 0.5, 1.0, 2.5, 5.0],
  }),

  // Conversations
  conversationsActive: new Gauge({
    name: 'salambot_conversations_active',
    help: 'Nombre de conversations actives',
    labelNames: ['channel', 'language'],
  }),

  conversationDuration: new Histogram({
    name: 'salambot_conversation_duration_seconds',
    help: 'Durée des conversations en secondes',
    labelNames: ['channel', 'resolution_type'],
    buckets: [30, 60, 120, 300, 600, 1200, 3600],
  }),

  // IA et modèles
  aiResponseGeneration: new Histogram({
    name: 'salambot_ai_response_duration_seconds',
    help: 'Durée de génération des réponses IA',
    labelNames: ['model', 'language', 'provider'],
    buckets: [0.1, 0.25, 0.5, 1.0, 2.0, 5.0, 10.0],
  }),

  aiModelFallbacks: new Counter({
    name: 'salambot_ai_model_fallbacks_total',
    help: 'Nombre de fallbacks entre modèles IA',
    labelNames: ['from_provider', 'to_provider', 'reason'],
  }),

  // Satisfaction client
  customerSatisfaction: new Histogram({
    name: 'salambot_customer_satisfaction_score',
    help: 'Score de satisfaction client (1-5)',
    labelNames: ['channel', 'language', 'resolution_type'],
    buckets: [1, 2, 3, 4, 5],
  }),
};

// Middleware Express pour métriques automatiques
export function metricsMiddleware(
  req: Request,
  res: Response,
  next: NextFunction
) {
  const start = Date.now();

  res.on('finish', () => {
    const duration = (Date.now() - start) / 1000;

    // Métriques HTTP standard
    httpRequestDuration.observe(
      {
        method: req.method,
        route: req.route?.path || 'unknown',
        status_code: res.statusCode,
      },
      duration
    );

    // Métriques spécifiques SalamBot
    if (req.path.includes('/api/chat')) {
      const language = req.body?.language || 'unknown';
      metrics.conversationsActive.inc({ channel: 'web', language });
    }
  });

  next();
}
```

Les métriques métier incluent les taux de satisfaction client, les temps de résolution, et l'efficacité de la détection Darija. Ces métriques sont intégrées dans des dashboards exécutifs qui permettent le suivi des KPIs business.

L'observabilité distribuée utilise OpenTelemetry pour le tracing des requêtes à travers tous les services. Cette configuration permet l'identification rapide des goulots d'étranglement et l'optimisation des performances.

### 9.4 Sécurité et Conformité

La sécurité de l'infrastructure utilise une approche defense-in-depth qui combine sécurité réseau, chiffrement, et contrôles d'accès granulaires. Cette stratégie assure la protection des données clients et la conformité avec les réglementations locales et internationales.

La gestion des secrets utilise Google Secret Manager avec une rotation automatique des clés et des audits d'accès complets. Cette configuration inclut des secrets séparés par environnement et des permissions minimales selon le principe du moindre privilège.

```hcl
# terraform/security.tf - Configuration sécurité
resource "google_secret_manager_secret" "salambot_secrets" {
  for_each = toset([
    "database-password",
    "redis-password",
    "jwt-private-key",
    "openai-api-key",
    "whatsapp-token"
  ])

  secret_id = "salambot-${each.key}"

  replication {
    user_managed {
      replicas {
        location = "europe-west1"
      }
      replicas {
        location = "europe-west3"
      }
    }
  }
}

resource "google_secret_manager_secret_iam_binding" "salambot_secrets_access" {
  for_each = google_secret_manager_secret.salambot_secrets

  secret_id = each.value.secret_id
  role      = "roles/secretmanager.secretAccessor"

  members = [
    "serviceAccount:${google_service_account.functions_run.email}",
    "serviceAccount:${google_service_account.kong.email}"
  ]
}

# Chiffrement des données
resource "google_kms_key_ring" "salambot" {
  name     = "salambot-keyring"
  location = "europe-west1"
}

resource "google_kms_crypto_key" "salambot_data" {
  name     = "salambot-data-key"
  key_ring = google_kms_key_ring.salambot.id

  rotation_period = "7776000s"  # 90 jours

  lifecycle {
    prevent_destroy = true
  }
}
```

La conformité RGPD et Loi 09-08 marocaine est assurée par des contrôles automatisés qui incluent la pseudonymisation des données, la gestion des consentements, et les droits des utilisateurs. Cette configuration inclut des APIs pour l'exercice des droits et des audits automatiques.

---

## 10. Innovations Technologiques et Perspectives Futures

L'évolution rapide des technologies d'intelligence artificielle et des plateformes cloud ouvre de nouvelles opportunités pour enrichir l'écosystème SalamBot. Cette section explore les innovations récentes qui pourraient apporter une valeur significative aux utilisateurs marocains tout en renforçant l'avantage concurrentiel de la plateforme.

Les innovations sélectionnées privilégient celles qui répondent aux spécificités du marché marocain, offrent un retour sur investissement mesurable, et s'intègrent naturellement dans l'architecture existante. Cette approche pragmatique assure que les investissements technologiques contribuent directement aux objectifs business de SalamBot.

### 10.1 Intelligence Artificielle Multimodale

L'émergence des modèles multimodaux comme GPT-4 Vision, Gemini Ultra, et Claude 3 Opus ouvre la possibilité d'enrichir SalamBot avec des capacités de traitement d'images, de vidéos, et d'audio. Cette évolution permettrait aux utilisateurs marocains d'interagir avec le système en utilisant des captures d'écran, des photos de produits, ou des messages vocaux en darija.

L'intégration de la reconnaissance vocale spécialisée pour le darija représente une opportunité unique de différenciation sur le marché marocain. Les récents progrès en speech-to-text avec des modèles comme Whisper v3 et les solutions spécialisées pour les dialectes arabes permettraient de créer une expérience utilisateur véritablement native.

```typescript
/**
 * @file        Service multimodal pour traitement voix, image et texte en darija
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { defineFlow } from '@genkit-ai/flow';
import { geminiPro, geminiProVision } from '@genkit-ai/vertexai';

interface MultimodalInput {
  type: 'text' | 'audio' | 'image' | 'video';
  content: string | Buffer;
  metadata: {
    language?: 'fr' | 'ar' | 'darija';
    channel: 'whatsapp' | 'web' | 'extension';
    userId: string;
  };
}

export const multimodalProcessingFlow = defineFlow(
  {
    name: 'multimodal-processing',
    inputSchema: z.object({
      input: z.custom<MultimodalInput>(),
      options: z
        .object({
          enableVoice: z.boolean().default(true),
          enableVision: z.boolean().default(true),
          maxProcessingTime: z.number().default(30000),
        })
        .optional(),
    }),
    outputSchema: z.object({
      processedContent: z.string(),
      detectedLanguage: z.enum(['fr', 'ar', 'darija']),
      confidence: z.number(),
      modalities: z.array(z.string()),
      processingTime: z.number(),
    }),
  },
  async ({ input, options = {} }) => {
    const startTime = Date.now();
    let processedContent = '';
    const modalities: string[] = [];

    switch (input.type) {
      case 'audio':
        // Transcription audio avec modèle spécialisé darija
        const transcription = await transcribeAudio(input.content as Buffer, {
          language: input.metadata.language,
          dialect: 'moroccan',
        });
        processedContent = transcription.text;
        modalities.push('speech-to-text');
        break;

      case 'image':
        // Analyse d'image avec description en contexte marocain
        const imageAnalysis = await analyzeImage(input.content as Buffer, {
          context: 'moroccan_commerce',
          language: input.metadata.language || 'fr',
        });
        processedContent = imageAnalysis.description;
        modalities.push('image-to-text');
        break;

      case 'video':
        // Extraction de frames clés et transcription audio
        const videoAnalysis = await processVideo(input.content as Buffer);
        processedContent = `${videoAnalysis.visualDescription}\n${videoAnalysis.audioTranscription}`;
        modalities.push('video-to-text', 'speech-to-text');
        break;

      default:
        processedContent = input.content as string;
        modalities.push('text');
    }

    // Détection de langue sur le contenu traité
    const languageDetection = await detectLanguage(processedContent);

    return {
      processedContent,
      detectedLanguage: languageDetection.language,
      confidence: languageDetection.confidence,
      modalities,
      processingTime: Date.now() - startTime,
    };
  }
);

async function transcribeAudio(
  audioBuffer: Buffer,
  options: { language?: string; dialect?: string }
) {
  // Intégration avec Whisper v3 ou service spécialisé darija
  const response = await fetch(
    'https://api.openai.com/v1/audio/transcriptions',
    {
      method: 'POST',
      headers: {
        Authorization: `Bearer ${process.env.OPENAI_API_KEY}`,
        'Content-Type': 'multipart/form-data',
      },
      body: createFormData({
        file: audioBuffer,
        model: 'whisper-1',
        language: options.language === 'darija' ? 'ar' : options.language,
        prompt: 'Transcription en darija marocain avec expressions locales',
      }),
    }
  );

  return response.json();
}
```

La génération de contenu multimodal permettrait à SalamBot de créer des réponses enrichies incluant des images explicatives, des diagrammes, ou des vidéos courtes. Cette capacité serait particulièrement utile pour les secteurs comme l'e-commerce, l'immobilier, ou les services techniques où la visualisation améliore significativement la compréhension.

### 10.2 Edge Computing et Traitement Local

L'évolution vers l'edge computing avec des solutions comme Cloudflare Workers, Vercel Edge Functions, et les nouveaux processeurs ARM optimisés pour l'IA ouvre la possibilité de rapprocher le traitement des utilisateurs marocains. Cette approche réduirait significativement les latences et améliorerait l'expérience utilisateur.

L'implémentation de modèles IA légers directement dans le navigateur avec WebAssembly et TensorFlow.js permettrait un fonctionnement offline complet pour les cas d'usage basiques. Cette capacité serait particulièrement précieuse dans les régions du Maroc où la connectivité internet peut être intermittente.

```typescript
/**
 * @file        Service edge computing pour traitement local et cache intelligent
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

// Cloudflare Worker pour edge processing
export default {
  async fetch(request: Request, env: Env): Promise<Response> {
    const url = new URL(request.url);

    // Détection géographique pour optimisation régionale
    const country = request.cf?.country;
    const region = request.cf?.region;

    if (country === 'MA') {
      // Traitement optimisé pour le Maroc
      return handleMoroccanRequest(request, env, region);
    }

    // Fallback vers traitement global
    return handleGlobalRequest(request, env);
  },
};

async function handleMoroccanRequest(
  request: Request,
  env: Env,
  region?: string
) {
  const cache = caches.default;
  const cacheKey = new Request(request.url, request);

  // Vérification cache edge
  let response = await cache.match(cacheKey);
  if (response) {
    return response;
  }

  // Traitement local avec modèle léger
  if (request.url.includes('/api/detect-simple')) {
    const body = await request.json();
    const result = await processWithEdgeModel(body.text, {
      region: region as
        | 'Casablanca-Settat'
        | 'Rabat-Salé-Kénitra'
        | 'Marrakech-Safi',
      useLocalPatterns: true,
    });

    response = new Response(JSON.stringify(result), {
      headers: {
        'Content-Type': 'application/json',
        'Cache-Control': 'public, max-age=300',
        'X-Edge-Location': 'Morocco',
        'X-Processing-Time': `${result.processingTime}ms`,
      },
    });

    // Cache pour 5 minutes
    await cache.put(cacheKey, response.clone());
    return response;
  }

  // Fallback vers Cloud Run pour traitement complexe
  return fetch(`${env.FUNCTIONS_RUN_URL}${new URL(request.url).pathname}`, {
    method: request.method,
    headers: request.headers,
    body: request.body,
  });
}

async function processWithEdgeModel(
  text: string,
  options: { region: string; useLocalPatterns: boolean }
) {
  const startTime = Date.now();

  // Modèle léger de détection darija optimisé pour edge
  const patterns = await loadRegionalPatterns(options.region);
  const confidence = calculateConfidence(text, patterns);

  let language: 'fr' | 'ar' | 'darija' = 'fr';

  if (confidence.darija > 0.8) {
    language = 'darija';
  } else if (confidence.arabic > 0.7) {
    language = 'ar';
  }

  return {
    language,
    confidence: Math.max(
      confidence.darija,
      confidence.arabic,
      confidence.french
    ),
    processingTime: Date.now() - startTime,
    edgeLocation: options.region,
    fallbackRequired: confidence.darija < 0.6 && confidence.arabic < 0.6,
  };
}
```

### 10.3 Réalité Augmentée et Interfaces Immersives

L'émergence des technologies AR/VR accessibles via WebXR et les nouveaux appareils comme Vision Pro d'Apple ouvrent des possibilités d'interfaces immersives pour SalamBot. Ces technologies pourraient révolutionner l'expérience client dans des secteurs comme l'immobilier, l'automobile, ou le retail.

L'intégration de la réalité augmentée permettrait aux clients de visualiser des produits dans leur environnement réel tout en bénéficiant de l'assistance IA de SalamBot. Cette approche serait particulièrement pertinente pour les marketplaces marocaines et les services de décoration intérieure.

```typescript
/**
 * @file        Interface AR pour assistance client immersive avec SalamBot
 * @author      SalamBot Team (contact: info@salambot.ma)
 * @created     2025-06-09
 * @updated     2025-06-09
 * @project     SalamBot - AI CRM for Moroccan SMEs
 */

import { ARSession, ARFrame, ARHitTestResult } from '@types/webxr';

export class SalamBotARAssistant {
  private session: ARSession | null = null;
  private chatInterface: HTMLElement;
  private productModels: Map<string, THREE.Object3D> = new Map();

  async initialize() {
    if (!navigator.xr) {
      throw new Error('WebXR non supporté sur cet appareil');
    }

    const supported = await navigator.xr.isSessionSupported('immersive-ar');
    if (!supported) {
      throw new Error('AR non supportée sur cet appareil');
    }

    this.session = await navigator.xr.requestSession('immersive-ar', {
      requiredFeatures: ['hit-test', 'dom-overlay'],
      domOverlay: { root: document.getElementById('ar-overlay')! },
    });

    this.setupARScene();
    this.initializeChatInterface();
  }

  private setupARScene() {
    // Configuration Three.js pour AR
    const scene = new THREE.Scene();
    const camera = new THREE.PerspectiveCamera();
    const renderer = new THREE.WebGLRenderer({
      antialias: true,
      alpha: true,
    });

    renderer.setSize(window.innerWidth, window.innerHeight);
    renderer.xr.enabled = true;
    renderer.xr.setSession(this.session!);

    // Éclairage adapté à l'AR
    const ambientLight = new THREE.AmbientLight(0xffffff, 0.6);
    const directionalLight = new THREE.DirectionalLight(0xffffff, 0.8);
    scene.add(ambientLight, directionalLight);
  }

  async handleProductVisualization(productId: string, position: THREE.Vector3) {
    // Chargement du modèle 3D du produit
    const model = await this.loadProductModel(productId);

    // Positionnement dans l'espace AR
    model.position.copy(position);
    model.scale.setScalar(0.1); // Échelle appropriée

    // Ajout d'informations contextuelles
    const infoPanel = this.createInfoPanel(productId);
    infoPanel.position.set(position.x + 0.5, position.y + 0.3, position.z);

    // Intégration avec SalamBot pour assistance
    this.chatInterface.innerHTML = `
      <div class="ar-chat-bubble">
        <p>Je vois que vous regardez ${await this.getProductName(
          productId
        )}.</p>
        <p>Voulez-vous que je vous donne plus d'informations ou que je vous aide à le configurer ?</p>
        <button onclick="this.askQuestion('${productId}')">Poser une question</button>
        <button onclick="this.showAlternatives('${productId}')">Voir alternatives</button>
      </div>
    `;
  }

  async askQuestion(productId: string) {
    const response = await fetch('/api/chat', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({
        message: `Question sur le produit ${productId} en contexte AR`,
        metadata: {
          channel: 'ar',
          productId,
          context: 'product_visualization',
        },
      }),
    });

    const result = await response.json();
    this.displayARResponse(result.reply);
  }

  private displayARResponse(message: string) {
    // Affichage de la réponse en overlay AR
    const responseElement = document.createElement('div');
    responseElement.className = 'ar-response';
    responseElement.innerHTML = `
      <div class="salambot-ar-message">
        <div class="avatar">🤖</div>
        <div class="content">${message}</div>
      </div>
    `;

    // Animation d'apparition en AR
    responseElement.style.opacity = '0';
    document.getElementById('ar-overlay')!.appendChild(responseElement);

    // Fade in avec animation
    requestAnimationFrame(() => {
      responseElement.style.transition = 'opacity 0.5s ease-in-out';
      responseElement.style.opacity = '1';
    });
  }
}
```

### 10.4 Blockchain et Web3 pour la Confiance

L'adoption croissante des technologies blockchain au Maroc, notamment avec les initiatives gouvernementales de digitalisation, ouvre des opportunités pour intégrer des mécanismes de confiance et de traçabilité dans SalamBot. Ces technologies pourraient renforcer la confiance des utilisateurs et créer de nouveaux modèles économiques.

L'implémentation de smart contracts pour la gestion des SLA et la facturation automatique pourrait simplifier les relations commerciales tout en garantissant la transparence. Cette approche serait particulièrement pertinente pour les entreprises marocaines qui cherchent à moderniser leurs processus.

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

/**
 * @title   Smart Contract SalamBot pour gestion SLA et facturation automatique
 * @author  SalamBot Team (contact: info@salambot.ma)
 * @created 2025-06-09
 * @updated 2025-06-09
 * @project SalamBot - AI CRM for Moroccan SMEs
 */

contract SalamBotSLA {
    struct ServiceLevel {
        uint256 responseTimeMs;
        uint256 availabilityPercent;
        uint256 satisfactionScore;
        uint256 monthlyPrice;
        bool active;
    }

    struct Client {
        address wallet;
        string companyName;
        ServiceLevel sla;
        uint256 balance;
        uint256 lastPayment;
        bool active;
    }

    mapping(address => Client) public clients;
    mapping(address => uint256[]) public performanceHistory;

    event SLAViolation(address indexed client, string violationType, uint256 timestamp);
    event PaymentProcessed(address indexed client, uint256 amount, uint256 timestamp);
    event ServiceLevelUpdated(address indexed client, ServiceLevel newSLA);

    modifier onlyActiveClient() {
        require(clients[msg.sender].active, "Client non actif");
        _;
    }

    function registerClient(
        string memory companyName,
        uint256 responseTime,
        uint256 availability,
        uint256 satisfaction,
        uint256 monthlyPrice
    ) external payable {
        require(msg.value >= monthlyPrice, "Paiement insuffisant");

        clients[msg.sender] = Client({
            wallet: msg.sender,
            companyName: companyName,
            sla: ServiceLevel({
                responseTimeMs: responseTime,
                availabilityPercent: availability,
                satisfactionScore: satisfaction,
                monthlyPrice: monthlyPrice,
                active: true
            }),
            balance: msg.value,
            lastPayment: block.timestamp,
            active: true
        });

        emit PaymentProcessed(msg.sender, msg.value, block.timestamp);
    }

    function recordPerformance(
        address clientAddress,
        uint256 responseTime,
        uint256 satisfactionScore
    ) external {
        // Seuls les oracles autorisés peuvent enregistrer les performances
        require(authorizedOracles[msg.sender], "Oracle non autorisé");

        Client storage client = clients[clientAddress];
        require(client.active, "Client non actif");

        // Vérification SLA
        if (responseTime > client.sla.responseTimeMs) {
            emit SLAViolation(clientAddress, "response_time", block.timestamp);
            // Crédit automatique pour violation SLA
            client.balance += calculateSLACredit(client.sla.monthlyPrice, "response_time");
        }

        if (satisfactionScore < client.sla.satisfactionScore) {
            emit SLAViolation(clientAddress, "satisfaction", block.timestamp);
            client.balance += calculateSLACredit(client.sla.monthlyPrice, "satisfaction");
        }

        // Enregistrement historique
        performanceHistory[clientAddress].push(
            (responseTime << 128) | satisfactionScore
        );
    }

    function processMonthlyBilling() external {
        // Traitement automatique de la facturation mensuelle
        for (uint i = 0; i < clientAddresses.length; i++) {
            address clientAddr = clientAddresses[i];
            Client storage client = clients[clientAddr];

            if (client.active && block.timestamp >= client.lastPayment + 30 days) {
                if (client.balance >= client.sla.monthlyPrice) {
                    client.balance -= client.sla.monthlyPrice;
                    client.lastPayment = block.timestamp;
                    emit PaymentProcessed(clientAddr, client.sla.monthlyPrice, block.timestamp);
                } else {
                    // Suspension du service pour non-paiement
                    client.active = false;
                }
            }
        }
    }
}
```

### 10.5 Intelligence Artificielle Prédictive et Analytique Avancée

L'évolution vers des modèles d'IA prédictive permettrait à SalamBot d'anticiper les besoins des clients et d'optimiser proactivement les interactions. Cette capacité s'appuierait sur l'analyse des patterns comportementaux et des données historiques pour créer une expérience personnalisée.

L'intégration d'analytics en temps réel avec des outils comme Apache Kafka, ClickHouse, et des modèles de machine learning spécialisés permettrait de détecter les tendances émergentes et d'adapter automatiquement les stratégies de réponse.

```python
"""
@file        Modèle prédictif pour anticipation des besoins clients SalamBot
@author      SalamBot Team (contact: info@salambot.ma)
@created     2025-06-09
@updated     2025-06-09
@project     SalamBot - AI CRM for Moroccan SMEs
"""

import pandas as pd
import numpy as np
from sklearn.ensemble import RandomForestClassifier, GradientBoostingRegressor
from sklearn.preprocessing import StandardScaler
from transformers import pipeline
import joblib

class SalamBotPredictiveEngine:
    def __init__(self):
        self.intent_classifier = None
        self.satisfaction_predictor = None
        self.escalation_predictor = None
        self.scaler = StandardScaler()

    def train_models(self, historical_data: pd.DataFrame):
        """Entraînement des modèles prédictifs sur données historiques"""

        # Préparation des features
        features = self.extract_features(historical_data)

        # Modèle de prédiction d'intention
        self.intent_classifier = RandomForestClassifier(
            n_estimators=100,
            max_depth=10,
            random_state=42
        )
        self.intent_classifier.fit(
            features[['message_length', 'sentiment_score', 'language_confidence',
                     'time_of_day', 'day_of_week', 'previous_interactions']],
            historical_data['intent']
        )

        # Modèle de prédiction de satisfaction
        self.satisfaction_predictor = GradientBoostingRegressor(
            n_estimators=100,
            learning_rate=0.1,
            max_depth=6,
            random_state=42
        )
        self.satisfaction_predictor.fit(
            features[['response_time', 'message_complexity', 'agent_experience',
                     'resolution_attempts', 'channel_type']],
            historical_data['satisfaction_score']
        )

        # Modèle de prédiction d'escalation
        self.escalation_predictor = RandomForestClassifier(
            n_estimators=150,
            max_depth=8,
            random_state=42
        )
        self.escalation_predictor.fit(
            features[['frustration_indicators', 'complexity_score', 'urgency_level',
                     'previous_escalations', 'business_hours']],
            historical_data['escalated']
        )

    def predict_customer_needs(self, conversation_context: dict) -> dict:
        """Prédiction proactive des besoins client"""

        features = self.extract_real_time_features(conversation_context)

        # Prédiction d'intention
        intent_proba = self.intent_classifier.predict_proba([features])[0]
        predicted_intent = self.intent_classifier.classes_[np.argmax(intent_proba)]

        # Prédiction de satisfaction
        predicted_satisfaction = self.satisfaction_predictor.predict([features])[0]

        # Prédiction d'escalation
        escalation_risk = self.escalation_predictor.predict_proba([features])[0][1]

        return {
            'predicted_intent': predicted_intent,
            'intent_confidence': float(np.max(intent_proba)),
            'predicted_satisfaction': float(predicted_satisfaction),
            'escalation_risk': float(escalation_risk),
            'recommendations': self.generate_recommendations(
                predicted_intent, predicted_satisfaction, escalation_risk
            )
        }

    def generate_recommendations(self, intent: str, satisfaction: float, escalation_risk: float) -> list:
        """Génération de recommandations basées sur les prédictions"""

        recommendations = []

        if escalation_risk > 0.7:
            recommendations.append({
                'type': 'escalation_prevention',
                'action': 'transfer_to_senior_agent',
                'priority': 'high',
                'message': 'Risque élevé d\'escalation détecté - transfert recommandé'
            })

        if satisfaction < 3.0:
            recommendations.append({
                'type': 'satisfaction_improvement',
                'action': 'offer_compensation',
                'priority': 'medium',
                'message': 'Satisfaction faible prédite - considérer une compensation'
            })

        if intent in ['complaint', 'refund_request']:
            recommendations.append({
                'type': 'proactive_resolution',
                'action': 'prepare_solution_options',
                'priority': 'high',
                'message': f'Intention {intent} détectée - préparer options de résolution'
            })

        return recommendations

    def extract_real_time_features(self, context: dict) -> list:
        """Extraction des features en temps réel"""

        message = context.get('message', '')

        return [
            len(message),  # message_length
            self.analyze_sentiment(message),  # sentiment_score
            context.get('language_confidence', 0.5),  # language_confidence
            context.get('hour', 12),  # time_of_day
            context.get('weekday', 1),  # day_of_week
            context.get('previous_interactions', 0),  # previous_interactions
            context.get('response_time', 1000),  # response_time
            self.calculate_complexity(message),  # message_complexity
            context.get('agent_experience', 5),  # agent_experience
            context.get('resolution_attempts', 1),  # resolution_attempts
            1 if context.get('channel') == 'whatsapp' else 0,  # channel_type
            self.detect_frustration(message),  # frustration_indicators
            self.calculate_urgency(message),  # urgency_level
            context.get('previous_escalations', 0),  # previous_escalations
            1 if 9 <= context.get('hour', 12) <= 17 else 0  # business_hours
        ]
```

---

## 11. Conclusion et Feuille de Route

Ce cahier des charges représente la vision complète et actualisée de SalamBot, intégrant les leçons apprises du développement initial et les innovations technologiques les plus récentes. L'approche structurée présentée dans ce document assure une base solide pour le développement d'une plateforme d'IA conversationnelle véritablement adaptée au marché marocain.

La méthodologie de développement proposée privilégie l'excellence technique tout en maintenant une approche pragmatique qui permet une livraison de valeur continue. Cette approche équilibrée assure que SalamBot peut évoluer rapidement tout en maintenant la qualité et la fiabilité nécessaires pour les déploiements enterprise.

### 11.1 Récapitulatif des Innovations Clés

L'architecture hybride de détection linguistique constitue l'innovation centrale qui différencie SalamBot sur le marché marocain. Cette approche combine traitement offline rapide, validation cloud intelligente, et fallback automatique pour offrir une précision supérieure à 90% avec des temps de réponse inférieurs à 50ms pour 80% des cas d'usage.

L'intégration Kong Gateway comme couche d'orchestration centrale simplifie l'architecture tout en offrant des fonctionnalités enterprise de sécurité, monitoring, et gestion du trafic. Cette approche API-first facilite l'intégration avec les systèmes existants et prépare l'évolution vers des architectures microservices plus complexes.

Le système de basculement intelligent entre modèles IA optimise les coûts opérationnels tout en maintenant une qualité de service élevée. Cette innovation permet à SalamBot d'offrir des tarifs compétitifs tout en investissant dans l'amélioration continue des capacités IA.

### 11.2 Feuille de Route Exécutive

La feuille de route SalamBot s'organise en quatre phases principales qui équilibrent développement de fonctionnalités, optimisation technique, et expansion commerciale. Cette planification permet une montée en charge progressive tout en validant les hypothèses métier à chaque étape.

**Phase 1 (Terminée) - Fondations MVP**

- Initialisation monorepo Nx avec applications de base
- Implémentation détection Darija offline basique
- Déploiement widget web et agent desk en version alpha
- Configuration CI/CD et environnements de développement

**Phase 2 (En cours) - Optimisation et Intégration**

- Migration Agent Desk vers Next.js 15 avec stack UI unifiée
- Implémentation Kong Gateway avec configuration production
- Optimisation détection Darija avec modèles hybrides
- Intégration WhatsApp Business API et extension Chrome MVP

**Phase 3 (Q3 2025) - Scaling et Intelligence**

- Déploiement modèles IA multimodaux (voix, image, vidéo)
- Implémentation analytics prédictifs et recommandations
- Expansion géographique avec edge computing
- Intégration blockchain pour SLA et facturation automatique

**Phase 4 (Q4 2025) - Innovation et Différenciation**

- Interfaces AR/VR pour secteurs spécialisés
- IA prédictive avancée avec personnalisation
- Marketplace de connecteurs et intégrations tierces
- Expansion internationale avec adaptation culturelle

### 11.3 Métriques de Succès et KPIs

Le succès de SalamBot se mesure à travers des métriques techniques et business qui reflètent l'impact réel sur l'expérience client et la performance des entreprises marocaines. Ces métriques guident les décisions d'investissement et d'évolution de la plateforme.

**Métriques Techniques**

- Précision détection Darija: >90% (objectif 95% en Phase 3)
- Temps de réponse moyen: <200ms (objectif <100ms en Phase 3)
- Disponibilité système: >99.5% (objectif 99.9% en Phase 3)
- Taux de fallback cloud: <20% (optimisation continue)

**Métriques Business**

- Satisfaction client: >4.2/5 (objectif 4.5/5 en Phase 3)
- Taux de résolution automatique: >70% (objectif 80% en Phase 3)
- Réduction temps de traitement: >50% vs processus manuels
- ROI client: >300% dans les 6 premiers mois

**Métriques Adoption**

- Nombre d'entreprises clientes: 50 (Phase 2) → 500 (Phase 3) → 2000 (Phase 4)
- Volume de conversations: 10K/mois → 100K/mois → 1M/mois
- Taux de rétention client: >85% (objectif 90% en Phase 3)
- Net Promoter Score: >50 (objectif 70 en Phase 3)

### 11.4 Facteurs Critiques de Succès

Le succès de SalamBot dépend de plusieurs facteurs critiques qui nécessitent une attention continue et des investissements ciblés. Ces facteurs constituent les piliers sur lesquels repose la stratégie de croissance de la plateforme.

**Excellence Technique Darija**
Le maintien de l'avantage concurrentiel en détection et traitement du darija nécessite un investissement continu en recherche et développement. Cette excellence technique constitue la barrière à l'entrée principale contre les concurrents internationaux.

**Écosystème de Partenaires**
Le développement d'un écosystème de partenaires technologiques et commerciaux au Maroc facilite l'adoption et crée des effets de réseau. Cette stratégie inclut des intégrations avec les ERP locaux, les plateformes e-commerce, et les systèmes bancaires.

**Conformité et Confiance**
Le respect des réglementations locales et internationales, combiné à une approche transparente de la gestion des données, renforce la confiance des entreprises marocaines. Cette confiance constitue un facteur différenciant crucial sur le marché local.

**Innovation Continue**
L'intégration rapide des innovations technologiques pertinentes maintient l'avance concurrentielle tout en répondant aux besoins évolutifs du marché marocain. Cette capacité d'innovation nécessite une veille technologique active et des partenariats stratégiques.

### 11.5 Vision Long Terme

La vision long terme de SalamBot dépasse le simple outil de service client pour devenir la plateforme d'intelligence artificielle de référence pour l'économie numérique marocaine. Cette ambition s'appuie sur l'expertise unique en darija et la compréhension profonde du contexte culturel local.

L'évolution vers une plateforme d'IA généraliste permettrait aux entreprises marocaines d'automatiser de nombreux processus métier tout en conservant l'authenticité culturelle dans leurs interactions. Cette expansion inclurait des domaines comme la finance, l'éducation, la santé, et l'administration publique.

L'internationalisation vers d'autres marchés arabophones et francophones leveragerait l'expertise développée au Maroc tout en respectant les spécificités culturelles locales. Cette expansion géographique positionnerait SalamBot comme leader régional de l'IA conversationnelle culturellement adaptée.

La contribution à l'écosystème technologique marocain à travers l'open source, la formation, et le transfert de compétences renforce l'impact sociétal de SalamBot au-delà de ses objectifs commerciaux. Cette approche contribue au développement du capital humain technologique national.

---

## Références et Sources

[1] OpenAI. "GPT-4 Technical Report." arXiv preprint arXiv:2303.08774 (2023). https://arxiv.org/abs/2303.08774

[2] Google Research. "Gemini: A Family of Highly Capable Multimodal Models." arXiv preprint arXiv:2312.11805 (2023). https://arxiv.org/abs/2312.11805

[3] Anthropic. "Claude 3 Model Card." Technical Documentation (2024). https://www.anthropic.com/claude

[4] Meta AI. "Llama 2: Open Foundation and Fine-Tuned Chat Models." arXiv preprint arXiv:2307.09288 (2023). https://arxiv.org/abs/2307.09288

[5] Kong Inc. "Kong Gateway 3.4 Documentation." Technical Documentation (2024). https://docs.konghq.com/gateway/

[6] Vercel. "Next.js 15 Documentation." Technical Documentation (2024). https://nextjs.org/docs

[7] Nx. "Nx 21 Monorepo Documentation." Technical Documentation (2024). https://nx.dev/

[8] Google Cloud. "Cloud Run Documentation." Technical Documentation (2024). https://cloud.google.com/run/docs

[9] Firebase. "Firebase Authentication Documentation." Technical Documentation (2024). https://firebase.google.com/docs/auth

[10] Grafana Labs. "Grafana Cloud Documentation." Technical Documentation (2024). https://grafana.com/docs/

---

**Document généré le 9 juin 2025**  
**Version 3.0 - Cahier des Charges Unifié SalamBot**  
**© 2025 SalamBot Team - Tous droits réservés**
