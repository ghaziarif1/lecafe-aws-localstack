# Étape 1 — LocalStack démarré

## Commandes de démarrage
localstack start -d
env:AWS_PROFILE = "localstack"
function awslocal { aws --endpoint-url http://localhost:4566 @args }

## Vérification IAM
awslocal iam list-users  → Users: []

## Note Windows
L'alias awslocal doit être redéfini à chaque nouvelle session PowerShell.
Il est sauvegardé dans : C:\Users\ghazi\OneDrive\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
