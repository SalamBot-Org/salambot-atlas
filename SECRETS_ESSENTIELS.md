# 🔐 Secrets GitHub Essentiels - SalamBot Atlas

## 📋 Phase Initiale - Secrets Indispensables

Ces secrets doivent être configurés **maintenant** pour le bon fonctionnement de base du projet.

### 🔒 Secrets de Sécurité (Requis)

```
JWT_SECRET=jwtS3cr3tK3y2024SalamBotAtlas9876
ENCRYPTION_KEY=encryptK3y2024SalamBotSecure5432
WEBHOOK_SECRET=webhookS3cr3t2024
```

## 📝 Configuration dans GitHub

### Étapes :

1. **Accédez au repository GitHub**

   - URL : https://github.com/SalamBot-Org/salambot-atlas

2. **Naviguez vers les secrets**

   - `Settings` > `Secrets and variables` > `Actions`
   - Ou directement : https://github.com/SalamBot-Org/salambot-atlas/settings/secrets/actions

3. **Ajoutez chaque secret**
   - Cliquez sur `New repository secret`
   - Nom : `JWT_SECRET`
   - Valeur : `jwtS3cr3tK3y2024SalamBotAtlas9876`
   - Répétez pour `ENCRYPTION_KEY` et `WEBHOOK_SECRET`

## ⏳ Secrets à Configurer Plus Tard

Ces secrets peuvent être ajoutés lors des phases suivantes :

- `NX_CLOUD_ACCESS_TOKEN` - Optimisation des builds (optionnel)
- `SLACK_WEBHOOK_URL` - Notifications (optionnel)
- `DATABASE_URL` - Base de données (phase développement)
- `OPENAI_API_KEY` - Intégration IA (phase fonctionnalités)
- `VERCEL_TOKEN` - Déploiement (phase production)

## ✅ Validation

Après configuration, vous pouvez valider avec le workflow :

```bash
gh workflow run validate-secrets.yml
```

## 🔗 Ressources

- [Documentation complète](docs/github-secrets-setup.md)
- [Script d'automatisation](scripts/setup-github-secrets.ps1)
- [Workflow de validation](.github/workflows/validate-secrets.yml)

---

**⚠️ Important** : Ces secrets sont générés pour cette session. En production, utilisez des valeurs plus complexes et uniques.
