# Lab 02 - S3: Object Storage and Lifecycle Management

## Objectif
Concevoir une architecture S3 trois-buckets pour Le Cafe.

## Buckets
| Bucket         | Type    | Usage                        |
|----------------|---------|------------------------------|
| lecafe-assets  | Prive   | Assets app + versioning      |
| lecafe-website | Public  | Site web statique            |
| lecafe-logs    | Prive   | Logs avec expiration 30j     |

## Services utilis?s
- S3 (buckets, objects, versioning, policies, lifecycle, static hosting)
