# Custom Caddy with plugins

[![Update & Release](https://github.com/docker-pet/caddy/actions/workflows/update-and-release.yml/badge.svg)](https://github.com/docker-pet/caddy/actions/workflows/update-and-release.yml)

Automatically releases a new version when a new version of [OutlineCaddy](https://github.com/Jigsaw-Code/outline-ss-server/tree/master/outlinecaddy) is released.


## Plugin list

- `github.com/mholt/caddy-l4`
- `github.com/Jigsaw-Code/outline-ss-server/outlinecaddy`
- `github.com/mholt/caddy-dynamicdns`
- `github.com/caddy-dns/cloudflare`


## Base config file

`/etc/caddy/Caddyfile`


## Enviroment variables

`CADDY_SERVICE_DOMAIN` - Caddy Admin API & Metrics domain (e.g., `admin.example.com`)

`CADDY_SERVICE_PATH` - Path to caddy admin & metrics prefix

`CADDY_SERVICE_PASSWORD` - Password hash (`caddy hash-password --plaintext 'your-password'`)

`CLOUDFLARE_API_TOKEN` - Auto DNS configuration [Clodufalre token](https://dash.cloudflare.com/profile/api-tokens)

`CLOUDFLARE_DOMAIN_ZONE` - The root domain zone in Cloudflare where DNS records will be managed (e.g., `example.com`)


## Supported platforms

- linux/amd64
- linux/arm64


## Docker image

`ghcr.io/docker-pet/caddy:latest`