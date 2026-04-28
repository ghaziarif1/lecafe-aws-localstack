# Étape 3 — Groupes IAM créés

## Structure
cafe-developers
  ├── alice
  └── bob

cafe-operations
  └── charlie

## Pourquoi des groupes ?
- Quand 5 nouveaux devs rejoignent → add-user-to-group suffit
- Changement de rôle → déplacer le user entre groupes
- Aucune config individuelle par user
- C'est ce que vérifient les auditeurs de sécurité AWS en premier
