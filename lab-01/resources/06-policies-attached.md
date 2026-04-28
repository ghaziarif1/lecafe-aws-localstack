# Étape 6 — Politiques attachées aux groupes

## Résultat
cafe-developers  ←→  LeCafe-Developer-S3
  - alice hérite : s3:ListBucket, GetObject, PutObject, DeleteObject sur lecafe-assets
  - bob   hérite : idem

cafe-operations  ←→  LeCafe-Operations-ReadOnly
  - charlie hérite : ec2:Describe*, logs:Get/Filter/Describe

## Principe fondamental
JAMAIS de politique attachée directement à un user.
Toujours : user → groupe → politique
