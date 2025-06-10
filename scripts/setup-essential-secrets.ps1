# Script de configuration des secrets GitHub essentiels pour SalamBot Atlas
# Phase initiale - Secrets indispensables uniquement

param(
    [Parameter(Mandatory=$false)]
    [string]$RepoOwner = "SalamBot-Org",
    
    [Parameter(Mandatory=$false)]
    [string]$RepoName = "salambot-atlas"
)

# Configuration des couleurs
function Write-ColorOutput {
    param(
        [string]$Message,
        [string]$Color = "White"
    )
    
    switch ($Color) {
        "Red" { Write-Host $Message -ForegroundColor Red }
        "Green" { Write-Host $Message -ForegroundColor Green }
        "Yellow" { Write-Host $Message -ForegroundColor Yellow }
        "Cyan" { Write-Host $Message -ForegroundColor Cyan }
        "Magenta" { Write-Host $Message -ForegroundColor Magenta }
        default { Write-Host $Message }
    }
}

# Fonction pour générer des secrets sécurisés
function Generate-SecureSecret {
    param([int]$Length = 32)
    
    $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*"
    $secret = ""
    for ($i = 0; $i -lt $Length; $i++) {
        $secret += $chars[(Get-Random -Maximum $chars.Length)]
    }
    return $secret
}

Write-ColorOutput "🚀 Configuration des secrets GitHub essentiels - SalamBot Atlas" "Cyan"
Write-ColorOutput "Repository: $RepoOwner/$RepoName" "Yellow"
Write-ColorOutput "" 

Write-ColorOutput "📋 Secrets indispensables à cette phase:" "Cyan"
Write-ColorOutput "" 

# Génération des secrets de sécurité
$jwtSecret = Generate-SecureSecret -Length 32
$encryptionKey = Generate-SecureSecret -Length 32
$webhookSecret = Generate-SecureSecret -Length 20

Write-ColorOutput "🔒 SECRETS DE SÉCURITÉ (générés automatiquement):" "Green"
Write-ColorOutput "" 
Write-ColorOutput "JWT_SECRET:" "Yellow"
Write-ColorOutput $jwtSecret "White"
Write-ColorOutput "" 
Write-ColorOutput "ENCRYPTION_KEY:" "Yellow"
Write-ColorOutput $encryptionKey "White"
Write-ColorOutput "" 
Write-ColorOutput "WEBHOOK_SECRET:" "Yellow"
Write-ColorOutput $webhookSecret "White"
Write-ColorOutput "" 

Write-ColorOutput "🔧 SECRETS CI/CD (optionnels à cette phase):" "Cyan"
Write-ColorOutput "" 
Write-ColorOutput "NX_CLOUD_ACCESS_TOKEN:" "Yellow"
Write-ColorOutput "  - Optionnel pour optimiser les builds" "White"
Write-ColorOutput "  - Obtenez-le sur: https://cloud.nx.app" "White"
Write-ColorOutput "" 
Write-ColorOutput "SLACK_WEBHOOK_URL:" "Yellow"
Write-ColorOutput "  - Optionnel pour les notifications" "White"
Write-ColorOutput "  - Format: https://hooks.slack.com/services/..." "White"
Write-ColorOutput "" 

Write-ColorOutput "📝 ÉTAPES DE CONFIGURATION MANUELLE:" "Magenta"
Write-ColorOutput "" 
Write-ColorOutput "1. Allez sur GitHub.com" "White"
Write-ColorOutput "2. Naviguez vers: $RepoOwner/$RepoName" "White"
Write-ColorOutput "3. Settings > Secrets and variables > Actions" "White"
Write-ColorOutput "4. Cliquez sur 'New repository secret'" "White"
Write-ColorOutput "5. Ajoutez chaque secret avec sa valeur générée ci-dessus" "White"
Write-ColorOutput "" 

Write-ColorOutput "✅ SECRETS PRIORITAIRES À CONFIGURER MAINTENANT:" "Green"
Write-ColorOutput "  ✓ JWT_SECRET (requis pour l'authentification)" "White"
Write-ColorOutput "  ✓ ENCRYPTION_KEY (requis pour le chiffrement)" "White"
Write-ColorOutput "  ✓ WEBHOOK_SECRET (requis pour la sécurité)" "White"
Write-ColorOutput "" 

Write-ColorOutput "⏳ SECRETS À CONFIGURER PLUS TARD:" "Yellow"
Write-ColorOutput "  • NX_CLOUD_ACCESS_TOKEN (quand vous aurez un compte Nx Cloud)" "White"
Write-ColorOutput "  • SLACK_WEBHOOK_URL (quand vous configurerez Slack)" "White"
Write-ColorOutput "  • DATABASE_URL (quand vous configurerez la base de données)" "White"
Write-ColorOutput "  • OPENAI_API_KEY (quand vous intégrerez l'IA)" "White"
Write-ColorOutput "" 

Write-ColorOutput "🔗 Liens utiles:" "Cyan"
Write-ColorOutput "  • GitHub Secrets: https://github.com/$RepoOwner/$RepoName/settings/secrets/actions" "White"
Write-ColorOutput "  • Documentation: docs/github-secrets-setup.md" "White"
Write-ColorOutput "" 

Write-ColorOutput "✨ Configuration terminée! Copiez les secrets générés ci-dessus dans GitHub." "Green"