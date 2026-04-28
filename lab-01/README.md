# Lab 01 — IAM: Identity and Access Management

## Objectif
Modéliser une structure d'accès réelle pour Le Café avec IAM.

## Acteurs
| Acteur   | Type         | Groupe            | Besoins                        |
|----------|--------------|-------------------|--------------------------------|
| alice    | Développeuse | cafe-developers   | S3 read/write sur lecafe-assets|
| bob      | Développeur  | cafe-developers   | S3 read/write sur lecafe-assets|
| charlie  | Ops          | cafe-operations   | EC2 read + CloudWatch logs     |
| lecafe-app | Service    | (rôle IAM)        | S3 read + SQS write            |

## Services utilisés
- IAM Users, Groups, Roles, Policies
- STS (AssumeRole)
- S3 + SQS (ressources cibles)
