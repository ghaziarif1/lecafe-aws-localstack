# ?tape 1 ? LocalStack d?marr?

## Pr?requis Lab 02
- LocalStack Pro running (healthy)
- IAM Lab 01 setup via setup-iam.ps1
- lecafe-app-role disponible pour bucket policy S3

## Session PowerShell
$env:AWS_PROFILE = "localstack"
function awslocal { aws --endpoint-url http://localhost:4566 @args }
