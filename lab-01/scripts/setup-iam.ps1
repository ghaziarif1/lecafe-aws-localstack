# setup-iam.ps1 - Lab 01 IAM Le Cafe
$env:AWS_PROFILE = "localstack"
function awslocal { aws --endpoint-url http://localhost:4566 @args }

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "   Le Cafe - Lab 01 IAM Setup              " -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

Write-Host "`n[1/5] Utilisateurs..." -ForegroundColor Yellow
awslocal iam create-user --user-name alice   2>$null
awslocal iam create-user --user-name bob     2>$null
awslocal iam create-user --user-name charlie 2>$null
Write-Host "  OK" -ForegroundColor Green

Write-Host "`n[2/5] Groupes..." -ForegroundColor Yellow
awslocal iam create-group --group-name cafe-developers 2>$null
awslocal iam create-group --group-name cafe-operations 2>$null
awslocal iam add-user-to-group --user-name alice   --group-name cafe-developers 2>$null
awslocal iam add-user-to-group --user-name bob     --group-name cafe-developers 2>$null
awslocal iam add-user-to-group --user-name charlie --group-name cafe-operations 2>$null
Write-Host "  OK" -ForegroundColor Green

Write-Host "`n[3/5] Politiques..." -ForegroundColor Yellow
awslocal iam create-policy `
  --policy-name LeCafe-Developer-S3 `
  --policy-document file://lab-01/policies/developer-s3-policy.json 2>$null
awslocal iam create-policy `
  --policy-name LeCafe-Operations-ReadOnly `
  --policy-document file://lab-01/policies/operations-policy.json 2>$null
Write-Host "  OK" -ForegroundColor Green

Write-Host "`n[4/5] Attachement groupes..." -ForegroundColor Yellow
awslocal iam attach-group-policy `
  --group-name cafe-developers `
  --policy-arn arn:aws:iam::000000000000:policy/LeCafe-Developer-S3 2>$null
awslocal iam attach-group-policy `
  --group-name cafe-operations `
  --policy-arn arn:aws:iam::000000000000:policy/LeCafe-Operations-ReadOnly 2>$null
Write-Host "  OK" -ForegroundColor Green

Write-Host "`n[5/5] Role applicatif + ressources..." -ForegroundColor Yellow
awslocal iam create-role `
  --role-name lecafe-app-role `
  --assume-role-policy-document file://lab-01/policies/trust-policy.json 2>$null
awslocal iam put-role-policy `
  --role-name lecafe-app-role `
  --policy-name LeCafe-App-Permissions `
  --policy-document file://lab-01/policies/app-role-policy.json 2>$null
awslocal s3 mb s3://lecafe-assets  2>$null
awslocal sqs create-queue --queue-name lecafe-orders 2>$null
Write-Host "  OK" -ForegroundColor Green

Write-Host "`n OK Lab 01 IAM setup complet !" -ForegroundColor Cyan
