# ?tape 2 ? Buckets S3 cr??s

## Buckets
| Bucket         | R?gion    | Type    |
|----------------|-----------|---------|
| lecafe-assets  | us-east-1 | Priv?   |
| lecafe-website | us-east-1 | Public  |
| lecafe-logs    | us-east-1 | Priv?   |

## Concept cl? : S3 n'est PAS un syst?me de fichiers
- Pas de dossiers r?els, seulement des buckets et des objets
- Un "dossier" = objet dont la cl? se termine par /
- menus/paris/menu.pdf = objet avec la cl? "menus/paris/menu.pdf"
- Les / sont juste des caract?res, pas des s?parateurs structurels
