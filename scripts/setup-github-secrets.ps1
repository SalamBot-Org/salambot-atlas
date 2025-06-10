# Script PowerShell pour configurer les secrets GitHub de SalamBot Atlas
# Usage: .\scripts\setup-github-secrets.ps1 -RepoOwner "username" -RepoName "salambot-atlas" -GitHubToken "your_token"

param(
    [Parameter(Mandatory=$true)]
    [string]$RepoOwner,
    
    [Parameter(Mandatory=$true)]
    [string]$RepoName,
    
    [Parameter(Mandatory=$true)]
    [string]$GitHubToken,
    
    [Parameter(Mandatory=$false)]
    [string]$Environment = "production",
    
    [Parameter(Mandatory=$false)]
    [switch]$DryRun
)

# Configuration des couleurs pour l'affichage
$Host.UI.RawUI.ForegroundColor = "White"

function Write-ColorOutput {
    param(
        [string]$Message,
        [string]$Color = "White"
    )
    
    $originalColor = $Host.UI.RawUI.ForegroundColor
    $Host.UI.RawUI.ForegroundColor = $Color
    Write-Host $Message
    $Host.UI.RawUI.ForegroundColor = $originalColor
}

function Test-GitHubCLI {
    try {
        $ghVersion = gh --version 2>$null
        if ($LASTEXITCODE -eq 0) {
            Write-ColorOutput "✅ GitHub CLI détecté: $($ghVersion[0])" "Green"
            return $true
        }
    }
    catch {
        Write-ColorOutput "❌ GitHub CLI non trouvé. Installation requise." "Red"
        Write-ColorOutput "Installez avec: winget install GitHub.cli" "Yellow"
        return $false
    }
    return $false
}

function Set-GitHubSecret {
    param(
        [string]$SecretName,
        [string]$SecretValue,
        [string]$Description = ""
    )
    
    if ([string]::IsNullOrWhiteSpace($SecretValue)) {
        Write-ColorOutput "⚠️  Valeur vide pour $SecretName - ignoré" "Yellow"
        return
    }
    
    if ($DryRun) {
        Write-ColorOutput "[DRY RUN] Configurerait le secret: $SecretName" "Cyan"
        return
    }
    
    try {
        # Utilisation de GitHub CLI pour définir le secret
        $env:GH_TOKEN = $GitHubToken
        echo $SecretValue | gh secret set $SecretName --repo "$RepoOwner/$RepoName"
        
        if ($LASTEXITCODE -eq 0) {
            Write-ColorOutput "✅ Secret configuré: $SecretName" "Green"
        } else {
            Write-ColorOutput "❌ Erreur lors de la configuration de $SecretName" "Red"
        }
    }
    catch {
        Write-ColorOutput "❌ Exception lors de la configuration de $SecretName : $($_.Exception.Message)" "Red"
    }
}

function Get-UserInput {
    param(
        [string]$Prompt,
        [bool]$IsSecret = $false,
        [string]$DefaultValue = ""
    )
    
    if ($DefaultValue) {
        $promptText = "$Prompt (défaut: $DefaultValue): "
    } else {
        $promptText = "$Prompt: "
    }
    
    if ($IsSecret) {
        $secureInput = Read-Host -Prompt $promptText -AsSecureString
        $ptr = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($secureInput)
        $input = [System.Runtime.InteropServices.Marshal]::PtrToStringBSTR($ptr)
        [System.Runtime.InteropServices.Marshal]::ZeroFreeBSTR($ptr)
    } else {
        $input = Read-Host -Prompt $promptText
    }
    
    if ([string]::IsNullOrWhiteSpace($input) -and $DefaultValue) {
        return $DefaultValue
    }
    
    return $input
}

function Show-SecretCategories {
    Write-ColorOutput "`n📋 Catégories de secrets à configurer:" "Cyan"
    Write-ColorOutput "1. 🔧 CI/CD Essentiels (NX_CLOUD_ACCESS_TOKEN, SLACK_WEBHOOK_URL)" "White"
    Write-ColorOutput "2. 🚀 Déploiement (VERCEL_TOKEN, DOCKER credentials)" "White"
    Write-ColorOutput "3. 🗄️  Base de données (DATABASE_URL, REDIS_URL)" "White"
    Write-ColorOutput "4. 🤖 APIs IA (OPENAI_API_KEY, ANTHROPIC_API_KEY)" "White"
    Write-ColorOutput "5. 🔒 Sécurité (JWT_SECRET, ENCRYPTION_KEY)" "White"
    Write-ColorOutput "6. ☁️  Cloud (GCP_SERVICE_ACCOUNT_KEY)" "White"
}

function Configure-CICDSecrets {
    Write-ColorOutput "`n🔧 Configuration des secrets CI/CD..." "Cyan"
    
    $nxToken = Get-UserInput "Token Nx Cloud (optionnel)"
    if ($nxToken) {
        Set-GitHubSecret "NX_CLOUD_ACCESS_TOKEN" $nxToken "Token pour Nx Cloud cache distribué"
    }
    
    $slackWebhook = Get-UserInput "URL Webhook Slack pour notifications"
    if ($slackWebhook) {
        Set-GitHubSecret "SLACK_WEBHOOK_URL" $slackWebhook "Webhook pour notifications Slack"
    }
}

function Configure-DeploymentSecrets {
    Write-ColorOutput "`n🚀 Configuration des secrets de déploiement..." "Cyan"
    
    $vercelToken = Get-UserInput "Token Vercel"
    if ($vercelToken) {
        Set-GitHubSecret "VERCEL_TOKEN" $vercelToken "Token API Vercel"
    }
    
    $vercelOrgId = Get-UserInput "ID Organisation Vercel"
    if ($vercelOrgId) {
        Set-GitHubSecret "VERCEL_ORG_ID" $vercelOrgId "ID organisation Vercel"
    }
    
    $dockerUsername = Get-UserInput "Nom d'utilisateur Docker Hub"
    if ($dockerUsername) {
        Set-GitHubSecret "DOCKER_USERNAME" $dockerUsername "Username Docker Hub"
    }
    
    $dockerPassword = Get-UserInput "Token Docker Hub" $true
    if ($dockerPassword) {
        Set-GitHubSecret "DOCKER_PASSWORD" $dockerPassword "Token Docker Hub"
    }
}

function Configure-DatabaseSecrets {
    Write-ColorOutput "`n🗄️ Configuration des secrets de base de données..." "Cyan"
    
    $databaseUrl = Get-UserInput "URL de la base de données PostgreSQL" $true
    if ($databaseUrl) {
        Set-GitHubSecret "DATABASE_URL" $databaseUrl "URL connexion PostgreSQL"
    }
    
    $redisUrl = Get-UserInput "URL Redis" $true
    if ($redisUrl) {
        Set-GitHubSecret "REDIS_URL" $redisUrl "URL connexion Redis"
    }
}

function Configure-AISecrets {
    Write-ColorOutput "`n🤖 Configuration des secrets IA..." "Cyan"
    
    $openaiKey = Get-UserInput "Clé API OpenAI" $true
    if ($openaiKey) {
        Set-GitHubSecret "OPENAI_API_KEY" $openaiKey "Clé API OpenAI"
    }
    
    $anthropicKey = Get-UserInput "Clé API Anthropic (optionnel)" $true
    if ($anthropicKey) {
        Set-GitHubSecret "ANTHROPIC_API_KEY" $anthropicKey "Clé API Anthropic"
    }
    
    $googleCloudKey = Get-UserInput "Clé API Google Cloud (optionnel)" $true
    if ($googleCloudKey) {
        Set-GitHubSecret "GOOGLE_CLOUD_API_KEY" $googleCloudKey "Clé API Google Cloud"
    }
}

function Configure-SecuritySecrets {
    Write-ColorOutput "`n🔒 Configuration des secrets de sécurité..." "Cyan"
    
    # Génération automatique de secrets sécurisés
    $jwtSecret = Get-UserInput "Secret JWT (laissez vide pour génération auto)" $true
    if ([string]::IsNullOrWhiteSpace($jwtSecret)) {
        $jwtSecret = [System.Convert]::ToBase64String([System.Security.Cryptography.RandomNumberGenerator]::GetBytes(32))
        Write-ColorOutput "🔑 Secret JWT généré automatiquement" "Green"
    }
    Set-GitHubSecret "JWT_SECRET" $jwtSecret "Secret pour tokens JWT"
    
    $encryptionKey = Get-UserInput "Clé de chiffrement (laissez vide pour génération auto)" $true
    if ([string]::IsNullOrWhiteSpace($encryptionKey)) {
        $encryptionKey = [System.Convert]::ToBase64String([System.Security.Cryptography.RandomNumberGenerator]::GetBytes(32))
        Write-ColorOutput "🔑 Clé de chiffrement générée automatiquement" "Green"
    }
    Set-GitHubSecret "ENCRYPTION_KEY" $encryptionKey "Clé de chiffrement données"
    
    $webhookSecret = Get-UserInput "Secret webhook (laissez vide pour génération auto)" $true
    if ([string]::IsNullOrWhiteSpace($webhookSecret)) {
        $bytes = [System.Security.Cryptography.RandomNumberGenerator]::GetBytes(20)
        $webhookSecret = [System.BitConverter]::ToString($bytes).Replace("-", "").ToLower()
        Write-ColorOutput "🔑 Secret webhook généré automatiquement" "Green"
    }
    Set-GitHubSecret "WEBHOOK_SECRET" $webhookSecret "Secret validation webhooks"
}

function Configure-CloudSecrets {
    Write-ColorOutput "`n☁️ Configuration des secrets cloud..." "Cyan"
    
    Write-ColorOutput "Pour GCP Service Account, collez le contenu JSON complet:" "Yellow"
    $gcpKey = Get-UserInput "Clé JSON Service Account GCP (optionnel)" $true
    if ($gcpKey) {
        Set-GitHubSecret "GCP_SERVICE_ACCOUNT_KEY" $gcpKey "Service Account GCP"
    }
}

function Show-ValidationScript {
    Write-ColorOutput "`n🔍 Script de validation des secrets:" "Cyan"
    
    $validationScript = @"
name: Validate Secrets
on:
  workflow_dispatch:

jobs:
  validate:
    runs-on: ubuntu-latest
    steps:
      - name: Check secrets
        run: |
          secrets=("NX_CLOUD_ACCESS_TOKEN" "SLACK_WEBHOOK_URL" "DATABASE_URL" "REDIS_URL" "OPENAI_API_KEY" "JWT_SECRET")
          for secret in `${secrets[@]}; do
            if [ -z "`${{ secrets.`$secret }}" ]; then
              echo "❌ `$secret is missing"
            else
              echo "✅ `$secret is configured"
            fi
          done
"@
    
    Write-ColorOutput $validationScript "Gray"
    Write-ColorOutput "`nSauvegardez ce script dans .github/workflows/validate-secrets.yml" "Yellow"
}

# Script principal
Write-ColorOutput "🚀 Configuration des secrets GitHub pour SalamBot Atlas" "Cyan"
Write-ColorOutput "Repository: $RepoOwner/$RepoName" "White"
Write-ColorOutput "Environnement: $Environment" "White"

if ($DryRun) {
    Write-ColorOutput "🔍 Mode DRY RUN activé - aucun secret ne sera modifié" "Yellow"
}

# Vérification des prérequis
if (-not (Test-GitHubCLI)) {
    exit 1
}

# Authentification GitHub CLI
try {
    $env:GH_TOKEN = $GitHubToken
    gh auth status 2>$null
    if ($LASTEXITCODE -ne 0) {
        Write-ColorOutput "🔐 Authentification avec le token fourni..." "Yellow"
        echo $GitHubToken | gh auth login --with-token
    }
    Write-ColorOutput "✅ Authentifié sur GitHub" "Green"
}
catch {
    Write-ColorOutput "❌ Erreur d'authentification GitHub" "Red"
    exit 1
}

# Menu interactif
Show-SecretCategories

do {
    Write-ColorOutput "`n📝 Sélectionnez les catégories à configurer (séparées par des virgules, ou 'all' pour tout):" "Cyan"
    $selection = Read-Host "Votre choix (1-6, all, ou `'quit`' pour terminer)"
    
    if ($selection -eq "quit") {
        break
    }
    
    $categories = if ($selection -eq "all") { @("1", "2", "3", "4", "5", "6") } else { $selection.Split(",").Trim() }
    
    foreach ($category in $categories) {
        switch ($category) {
            "1" { Configure-CICDSecrets }
            "2" { Configure-DeploymentSecrets }
            "3" { Configure-DatabaseSecrets }
            "4" { Configure-AISecrets }
            "5" { Configure-SecuritySecrets }
            "6" { Configure-CloudSecrets }
            default { Write-ColorOutput "❌ Catégorie invalide: $category" "Red" }
        }
    }
    
    Write-ColorOutput "`n✅ Configuration terminée pour les catégories sélectionnées" "Green"
    
} while ($true)

Write-ColorOutput "`n🎉 Configuration des secrets terminée!" "Green"
Write-ColorOutput "📖 Consultez docs/github-secrets-setup.md pour plus d'informations" "Cyan"

Show-ValidationScript

Write-ColorOutput "`n🔄 Prochaines étapes recommandées:" "Cyan"
Write-ColorOutput "1. Tester les secrets avec un workflow de validation" "White"
Write-ColorOutput "2. Configurer la rotation automatique des secrets" "White"
Write-ColorOutput "3. Documenter les secrets dans votre gestionnaire de mots de passe" "White"
Write-ColorOutput "4. Configurer les alertes de sécurité" "White"