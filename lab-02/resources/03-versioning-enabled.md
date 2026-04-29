# ?tape 3 ? Versioning activ? sur lecafe-assets

## Configuration
Bucket : lecafe-assets
Versioning : Enabled

## Pourquoi le versioning ?
- Protection contre les ?crasements accidentels
- S3 cr?e une NOUVELLE version au lieu d'?craser
- Chaque version a un VersionId unique
- R?cup?ration instantan?e : get-object --version-id

## Diff?rence s3 vs s3api
- s3    : commandes haut-niveau (cp, mb, ls, rm)
- s3api : API REST brute (versioning, policies, lifecycle, website)
- Pour la config avanc?e : toujours s3api
