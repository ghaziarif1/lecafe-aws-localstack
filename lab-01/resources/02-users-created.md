# Étape 2 — Utilisateurs IAM créés

## Utilisateurs
| Nom     | Rôle         | ARN                                        |
|---------|--------------|--------------------------------------------|
| alice   | Développeuse | arn:aws:iam::000000000000:user/alice        |
| bob     | Développeur  | arn:aws:iam::000000000000:user/bob          |
| charlie | Opérations   | arn:aws:iam::000000000000:user/charlie      |

## Commandes utilisées
awslocal iam create-user --user-name alice
awslocal iam create-user --user-name bob
awslocal iam create-user --user-name charlie

## Concept ARN
Format : arn:aws:service:region:account-id:resource-type/resource-name
Dans LocalStack, account-id est toujours : 000000000000
