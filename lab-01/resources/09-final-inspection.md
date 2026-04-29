# ?tape 9 ? Ressources + Inspection Finale

## Ressources cr??es
| Service | Nom            | Utilis? par            |
|---------|----------------|------------------------|
| S3      | lecafe-assets  | alice, bob, lecafe-app |
| SQS     | lecafe-orders  | lecafe-app             |

## Structure IAM compl?te valid?e
alice   -> cafe-developers -> LeCafe-Developer-S3
bob     -> cafe-developers -> LeCafe-Developer-S3
charlie -> cafe-operations -> LeCafe-Operations-ReadOnly
lecafe-app-role (EC2 trust) -> LeCafe-App-Permissions (S3+SQS)

## Pourquoi LocalStack repart de zero ?
LocalStack est ephemere par defaut (in-memory).
A chaque redemarrage toutes les ressources disparaissent.
Le script setup-iam.ps1 permet de tout recreer en 1 commande.
