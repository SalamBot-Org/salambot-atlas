# 🤖 SalamBot

> **Plateforme d'IA conversationnelle spécialisée en Darija marocaine**

[![Version](https://img.shields.io/badge/version-3.0.0-blue.svg)](https://github.com/SalamBot-Org/salambot-atlas)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)](https://github.com/SalamBot-Org/salambot-atlas/actions)
[![Coverage](https://img.shields.io/badge/coverage-85%25-yellow.svg)](https://codecov.io/gh/SalamBot-Org/salambot-atlas)
[![Darija Detection](https://img.shields.io/badge/darija%20detection-88%25-orange.svg)](docs/metrics.md)

---

## 🌟 Vue d'ensemble

SalamBot est la première solution d'intelligence artificielle conversationnelle spécialement conçue pour le marché marocain et maghrébin. Cette plateforme révolutionnaire combine l'expertise technique de pointe avec une compréhension profonde des spécificités linguistiques et culturelles du Maroc.

### ✨ Caractéristiques principales

- 🇲🇦 **Expertise Darija** : Détection et traitement natif du dialecte marocain avec >88% de précision
- ⚡ **Performance optimale** : Temps de réponse <200ms pour 80% des interactions
- 🔄 **Architecture hybride** : Combinaison intelligente offline/cloud pour optimiser coûts et performances
- 🛡️ **Sécurité avancée** : Chiffrement end-to-end et conformité RGPD
- 🔌 **Intégration facile** : APIs REST, WebSockets, et widgets prêts à l'emploi
- 📊 **Analytics avancées** : Tableaux de bord temps réel et métriques détaillées

---

## 🚀 Démarrage rapide

### Prérequis

- **Node.js** 20+ LTS
- **pnpm** 8+ (gestionnaire de paquets recommandé)
- **Docker** 24+ (pour le développement local)
- **Git** 2.40+

### Installation

```bash
# Cloner le repository
git clone https://github.com/SalamBot-Org/salambot-atlas.git
cd salambot-atlas

# Installer les dépendances
pnpm install

# Configuration de l'environnement
cp .env.example .env
# Éditer .env avec vos configurations

# Démarrer l'environnement de développement
pnpm dev
```

### Test rapide

```bash
# Lancer les tests
pnpm test

# Vérifier la détection Darija
pnpm test:darija

# Démarrer le serveur de développement
pnpm start:dev
```

---

## 🏗️ Architecture

SalamBot utilise une architecture monorepo moderne basée sur **Nx** avec une approche microservices :

```
salambot-atlas/
├── apps/                   # Applications principales
│   ├── api/                # API REST principale
│   ├── widget/             # Widget Web intégrable
│   ├── agent-desk/         # Interface agents humains
│   └── chrome-extension/   # Extension Chrome
├── libs/                   # Bibliothèques partagées
│   ├── darija-detection/   # Moteur de détection Darija
│   ├── ai-core/           # Logique IA et Genkit
│   ├── shared-ui/         # Composants UI réutilisables
│   └── integrations/      # Connecteurs externes
├── automation/            # Scripts d'automatisation
└── docs/                  # Documentation complète
```

### Stack technologique

- **Frontend** : React 18, TypeScript, Tailwind CSS
- **Backend** : Node.js, Express, TypeScript
- **IA** : Google Genkit, TensorFlow.js, Transformers
- **Base de données** : PostgreSQL, Firestore, Redis
- **Infrastructure** : Docker, Kubernetes, Google Cloud
- **Monitoring** : Prometheus, Grafana, Sentry

---

## 📱 Applications

### 🌐 Widget Web

Widget JavaScript intégrable pour sites web et applications.

```javascript
// Intégration simple
<script src="https://cdn.salambot.ma/widget.js"></script>
<script>
  SalamBot.init({
    apiKey: 'votre-cle-api',
    language: 'darija',
    theme: 'modern'
  });
</script>
```

### 🖥️ Agent Desk

Interface de gestion pour les agents humains avec supervision IA.

- Tableau de bord temps réel
- Gestion des conversations
- Analytics et rapports
- Formation et optimisation

### 🔌 Extension Chrome

Extension pour intégration avec les systèmes CRM existants.

- Intégration Salesforce, HubSpot
- Détection automatique Darija
- Suggestions de réponses IA
- Synchronisation bidirectionnelle

---

## 🤖 Fonctionnalités IA

### Détection linguistique hybride

- **Offline** : Modèle TensorFlow.js léger (2MB)
- **Cloud** : Modèles avancés pour cas complexes
- **Précision** : >88% sur le dialecte Darija
- **Performance** : <100ms pour 80% des détections

### Génération de réponses

- **Contextuelle** : Prise en compte de l'historique
- **Culturelle** : Adaptation aux codes sociaux marocains
- **Multimodale** : Texte, images, documents
- **Personnalisée** : Apprentissage continu par entreprise

---

## 🔧 Développement

### Structure des commandes

```bash
# Développement
pnpm dev                    # Démarrer tous les services
pnpm dev:api               # API uniquement
pnpm dev:widget            # Widget uniquement

# Tests
pnpm test                  # Tous les tests
pnpm test:unit            # Tests unitaires
pnpm test:e2e             # Tests end-to-end
pnpm test:darija          # Tests spécifiques Darija

# Build
pnpm build                # Build de production
pnpm build:api            # Build API
pnpm build:widget         # Build Widget

# Qualité
pnpm lint                 # Linting
pnpm format               # Formatage
pnpm type-check           # Vérification TypeScript
```

### Standards de développement

- **Code** : ESLint + Prettier + TypeScript strict
- **Tests** : Jest + Testing Library + Cypress
- **Git** : Conventional Commits + Husky hooks
- **CI/CD** : GitHub Actions + automatisation complète

---

## 📊 Métriques et performance

### Objectifs de performance

| Métrique             | Objectif   | Actuel |
| -------------------- | ---------- | ------ |
| Détection Darija     | >88%       | 88.5%  |
| Temps de réponse API | <200ms P95 | 185ms  |
| Disponibilité        | >99.9%     | 99.95% |
| Couverture tests     | >85%       | 87%    |

### Monitoring

- **Temps réel** : Dashboards Grafana
- **Alertes** : PagerDuty + Slack
- **Logs** : ELK Stack centralisé
- **Erreurs** : Sentry avec contexte IA

---

## 🔐 Sécurité

### Mesures de protection

- **Authentification** : OAuth 2.0 + JWT
- **Chiffrement** : TLS 1.3 + AES-256
- **Données** : Anonymisation + RGPD
- **API** : Rate limiting + validation stricte

### Conformité

- ✅ RGPD (Règlement Général sur la Protection des Données)
- ✅ ISO 27001 (Sécurité de l'information)
- ✅ SOC 2 Type II (Contrôles de sécurité)

---

## 🌍 Déploiement

### Environnements

- **Développement** : Local + Docker Compose
- **Staging** : Google Cloud Run + Cloud SQL
- **Production** : Kubernetes + Multi-région

### Automatisation

```bash
# Configuration automatique
cd automation
pnpm install
pnpm run setup

# Gestion des issues GitHub
pnpm run create-issues     # Créer toutes les issues
pnpm run sync-issues       # Synchroniser l'état
pnpm run generate-report   # Rapport de progression
```

---

## 📚 Documentation

### Guides disponibles

- 📋 [Cahier des charges complet](docs/onboarding/📋%20Cahier%20des%20Charges%20SalamBot%20v3.0.md)
- 🚀 [Guide de démarrage](docs/onboarding/🚀%20SalamBot%20Starter%20Pack%20-%20Guide%20Claude%204.md)
- 📚 [Guide d'utilisation](docs/onboarding/📚%20Guide%20d'Utilisation%20Claude%204%20-%20SalamBot.md)
- 📋 [Directives projet](docs/onboarding/📋%20PROJECT_GUIDELINES%20-%20Guide%20Claude%204%20pour%20SalamBot.md)
- ✅ [TODO complet](docs/onboarding/✅%20TODO%20COMPLET%20SALAMBOT%20-%20Guide%20Claude%204.md)

### API Documentation

- **REST API** : [docs/api/rest.md](docs/api/rest.md)
- **WebSocket** : [docs/api/websocket.md](docs/api/websocket.md)
- **SDK JavaScript** : [docs/sdk/javascript.md](docs/sdk/javascript.md)

---

## 🤝 Contribution

### Comment contribuer

1. **Fork** le repository
2. **Créer** une branche feature (`git checkout -b feature/amazing-feature`)
3. **Commit** vos changements (`git commit -m 'feat: add amazing feature'`)
4. **Push** vers la branche (`git push origin feature/amazing-feature`)
5. **Ouvrir** une Pull Request

### Standards de contribution

- Suivre les [directives de développement](docs/onboarding/📋%20PROJECT_GUIDELINES%20-%20Guide%20Claude%204%20pour%20SalamBot.md)
- Ajouter des tests pour toute nouvelle fonctionnalité
- Maintenir la couverture de tests >85%
- Respecter les conventions de commit

---

## 📞 Support

### Canaux de support

- 📧 **Email** : support@salambot.ma
- 💬 **Discord** : [SalamBot Community](https://discord.gg/salambot)
- 📱 **WhatsApp** : +212 6XX XXX XXX
- 🐛 **Issues** : [GitHub Issues](https://github.com/SalamBot-Org/salambot-atlas/issues)

### Ressources

- 📖 [Documentation complète](https://docs.salambot.ma)
- 🎥 [Tutoriels vidéo](https://youtube.com/salambot)
- 📊 [Status page](https://status.salambot.ma)
- 🔧 [Outils développeur](https://dev.salambot.ma)

---

## 📄 Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

---

## 🙏 Remerciements

- **Équipe SalamBot** pour la vision et l'innovation
- **Communauté open source** pour les outils et bibliothèques
- **Utilisateurs bêta** pour les retours précieux
- **Partenaires** pour leur confiance et support

---

<div align="center">

**Fait avec ❤️ au Maroc 🇲🇦**

[Site web](https://salambot.ma) • [Documentation](https://docs.salambot.ma) • [Blog](https://blog.salambot.ma) • [Twitter](https://twitter.com/salambot_ma)

</div>
