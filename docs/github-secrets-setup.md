# Configuration des Secrets GitHub pour SalamBot Atlas

Ce guide détaille la configuration des secrets GitHub nécessaires pour le bon fonctionnement du pipeline CI/CD et des déploiements de SalamBot Atlas.

## 📋 Liste des Secrets Requis

### 🔧 Secrets CI/CD Essentiels

#### `NX_CLOUD_ACCESS_TOKEN`
- **Description** : Token d'accès pour Nx Cloud (cache distribué)
- **Utilisation** : Optimisation des builds et tests
- **Obtention** : [Nx Cloud Dashboard](https://cloud.nx.app)
- **Format** : `nx_cloud_xxxxxxxxxxxxxxxxxxxxx`

#### `SLACK_WEBHOOK_URL`
- **Description** : URL du webhook Slack pour les notifications CI/CD
- **Utilisation** : Notifications de succès/échec des pipelines
- **Obtention** : Slack App > Incoming Webhooks
- **Format** : `https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX`

### 🚀 Secrets de Déploiement

#### `VERCEL_TOKEN`
- **Description** : Token d'API Vercel pour les déploiements automatiques
- **Utilisation** : Déploiement du widget et de l'agent desk
- **Obtention** : Vercel Dashboard > Settings > Tokens
- **Format** : `vercel_xxxxxxxxxxxxxxxxxxxxx`

#### `VERCEL_ORG_ID`
- **Description** : ID de l'organisation Vercel
- **Utilisation** : Identification de l'organisation pour les déploiements
- **Obtention** : Vercel Dashboard > Settings > General
- **Format** : `team_xxxxxxxxxxxxxxxxxxxxx`

#### `VERCEL_PROJECT_ID_WIDGET`
- **Description** : ID du projet Vercel pour le widget
- **Utilisation** : Déploiement spécifique du widget
- **Obtention** : Vercel Project Settings
- **Format** : `prj_xxxxxxxxxxxxxxxxxxxxx`

#### `VERCEL_PROJECT_ID_AGENT_DESK`
- **Description** : ID du projet Vercel pour l'agent desk
- **Utilisation** : Déploiement spécifique de l'agent desk
- **Obtention** : Vercel Project Settings
- **Format** : `prj_xxxxxxxxxxxxxxxxxxxxx`

### 🔐 Secrets d'Infrastructure

#### `DOCKER_USERNAME`
- **Description** : Nom d'utilisateur Docker Hub
- **Utilisation** : Publication des images Docker
- **Obtention** : Docker Hub Account Settings
- **Format** : `your-docker-username`

#### `DOCKER_PASSWORD`
- **Description** : Token d'accès Docker Hub
- **Utilisation** : Authentification Docker Hub
- **Obtention** : Docker Hub > Account Settings > Security
- **Format** : `dckr_pat_xxxxxxxxxxxxxxxxxxxxx`

#### `GCP_SERVICE_ACCOUNT_KEY`
- **Description** : Clé JSON du compte de service Google Cloud
- **Utilisation** : Déploiement sur Google Cloud Run
- **Obtention** : GCP Console > IAM > Service Accounts
- **Format** : JSON complet du service account

### 🗄️ Secrets de Base de Données

#### `DATABASE_URL`
- **Description** : URL de connexion à la base de données principale
- **Utilisation** : Connexion API à la base de données
- **Format** : `postgresql://user:password@host:port/database`
- **Exemple** : `postgresql://salambot:secret@db.example.com:5432/salambot_prod`

#### `REDIS_URL`
- **Description** : URL de connexion Redis pour le cache
- **Utilisation** : Cache et sessions
- **Format** : `redis://user:password@host:port`
- **Exemple** : `redis://default:secret@redis.example.com:6379`

### 🤖 Secrets IA et APIs Externes

#### `OPENAI_API_KEY`
- **Description** : Clé API OpenAI pour GPT
- **Utilisation** : Génération de réponses IA
- **Obtention** : OpenAI Platform > API Keys
- **Format** : `sk-xxxxxxxxxxxxxxxxxxxxx`

#### `ANTHROPIC_API_KEY`
- **Description** : Clé API Anthropic pour Claude
- **Utilisation** : Génération de réponses IA alternative
- **Obtention** : Anthropic Console > API Keys
- **Format** : `sk-ant-xxxxxxxxxxxxxxxxxxxxx`

#### `GOOGLE_CLOUD_API_KEY`
- **Description** : Clé API Google Cloud pour les services IA
- **Utilisation** : Traduction, analyse de sentiment
- **Obtention** : GCP Console > APIs & Services > Credentials
- **Format** : `AIzaSyxxxxxxxxxxxxxxxxxxxxx`

### 🔒 Secrets de Sécurité

#### `JWT_SECRET`
- **Description** : Secret pour la signature des tokens JWT
- **Utilisation** : Authentification et autorisation
- **Génération** : `openssl rand -base64 32`
- **Format** : Chaîne aléatoire de 32+ caractères

#### `ENCRYPTION_KEY`
- **Description** : Clé de chiffrement pour les données sensibles
- **Utilisation** : Chiffrement des données utilisateur
- **Génération** : `openssl rand -base64 32`
- **Format** : Chaîne aléatoire de 32+ caractères

#### `WEBHOOK_SECRET`
- **Description** : Secret pour valider les webhooks entrants
- **Utilisation** : Sécurisation des webhooks GitHub/Slack
- **Génération** : `openssl rand -hex 20`
- **Format** : Chaîne hexadécimale de 40 caractères

## 🛠️ Configuration dans GitHub

### Étapes de Configuration

1. **Accéder aux Settings du Repository**
   ```
   GitHub Repository > Settings > Secrets and variables > Actions
   ```

2. **Ajouter un Nouveau Secret**
   - Cliquer sur "New repository secret"
   - Entrer le nom exact du secret (sensible à la casse)
   - Coller la valeur du secret
   - Cliquer sur "Add secret"

3. **Vérifier la Configuration**
   - Les secrets apparaissent dans la liste mais les valeurs restent masquées
   - Tester avec un workflow simple si nécessaire

### Secrets par Environnement

#### Production
```bash
# Secrets critiques pour la production
NX_CLOUD_ACCESS_TOKEN=nx_cloud_prod_token
DATABASE_URL=postgresql://prod_user:prod_pass@prod-db:5432/salambot
REDIS_URL=redis://prod-redis:6379
OPENAI_API_KEY=sk-prod-openai-key
JWT_SECRET=super-secure-prod-jwt-secret
```

#### Staging
```bash
# Secrets pour l'environnement de staging
DATABASE_URL=postgresql://staging_user:staging_pass@staging-db:5432/salambot_staging
REDIS_URL=redis://staging-redis:6379
OPENAI_API_KEY=sk-staging-openai-key
JWT_SECRET=staging-jwt-secret
```

## 🔍 Validation et Tests

### Script de Validation

Créer un workflow de test pour valider les secrets :

```yaml
name: Validate Secrets
on:
  workflow_dispatch:

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - name: Check required secrets
        run: |
          echo "Checking NX_CLOUD_ACCESS_TOKEN..."
          if [ -z "${{ secrets.NX_CLOUD_ACCESS_TOKEN }}" ]; then
            echo "❌ NX_CLOUD_ACCESS_TOKEN is missing"
            exit 1
          fi
          echo "✅ NX_CLOUD_ACCESS_TOKEN is configured"
          
          echo "Checking SLACK_WEBHOOK_URL..."
          if [ -z "${{ secrets.SLACK_WEBHOOK_URL }}" ]; then
            echo "❌ SLACK_WEBHOOK_URL is missing"
            exit 1
          fi
          echo "✅ SLACK_WEBHOOK_URL is configured"
```

### Checklist de Validation

- [ ] Tous les secrets requis sont configurés
- [ ] Les noms des secrets correspondent exactement
- [ ] Les valeurs sont correctes et non expirées
- [ ] Les permissions d'accès sont appropriées
- [ ] Les secrets de test fonctionnent en staging
- [ ] La rotation des secrets est planifiée

## 🔄 Rotation des Secrets

### Fréquence Recommandée

- **Tokens API** : Tous les 90 jours
- **Secrets JWT** : Tous les 30 jours
- **Clés de chiffrement** : Tous les 180 jours
- **Webhooks** : Lors de compromission suspectée

### Processus de Rotation

1. Générer le nouveau secret
2. Tester en staging
3. Mettre à jour en production
4. Vérifier le bon fonctionnement
5. Révoquer l'ancien secret
6. Documenter la rotation

## 🚨 Sécurité et Bonnes Pratiques

### ✅ À Faire

- Utiliser des secrets spécifiques par environnement
- Implémenter la rotation régulière
- Monitorer l'utilisation des secrets
- Utiliser des tokens avec permissions minimales
- Documenter tous les secrets et leur usage

### ❌ À Éviter

- Hardcoder des secrets dans le code
- Partager des secrets via des canaux non sécurisés
- Utiliser les mêmes secrets en prod et staging
- Laisser des secrets expirés actifs
- Donner des permissions trop larges

## 📞 Support

En cas de problème avec la configuration des secrets :

1. Vérifier la documentation GitHub Actions
2. Consulter les logs des workflows
3. Tester avec des secrets temporaires
4. Contacter l'équipe DevOps si nécessaire

---

**Note** : Ce document doit être maintenu à jour lors de l'ajout de nouveaux services ou de la modification de l'architecture.