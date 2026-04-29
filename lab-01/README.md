# Lab 01 - IAM: Identity and Access Management

## Architecture IAM

cafe-developers (groupe)
  - alice, bob
  - LeCafe-Developer-S3 : s3:ListBucket/GetObject/PutObject/DeleteObject sur lecafe-assets

cafe-operations (groupe)
  - charlie
  - LeCafe-Operations-ReadOnly : ec2:Describe* + logs:Get/Filter

lecafe-app-role (role IAM)
  - Trust: ec2.amazonaws.com
  - LeCafe-App-Permissions : s3:GetObject/ListBucket + sqs:SendMessage sur lecafe-orders

## Concepts cles
- Users   : identites humaines, credentials long-lived
- Groups  : toujours attacher les politiques aux groupes jamais aux users
- Policies: JSON Allow/Deny sur Action + Resource (ARN scope)
- Roles   : identites temporaires pour services, zero credentials long-lived
- STS AssumeRole : credentials temporaires auto-expirants

## Lecon Windows - encodage JSON
TOUJOURS utiliser pour les fichiers JSON de politiques IAM :
  @'"'"'...'"'"'@ | Set-Content fichier.json -Encoding ascii
JAMAIS :
  @"..."@ | Out-File fichier.json -Encoding UTF8
La raison : UTF8 avec BOM cause MalformedPolicyDocument dans AWS CLI

## Demarrage rapide
  localstack start -d
  $env:AWS_PROFILE = "localstack"
  function awslocal { aws --endpoint-url http://localhost:4566 @args }
  .\lab-01\scripts\setup-iam.ps1
