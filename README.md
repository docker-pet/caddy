# Custom Caddy with plugins

[![Update & Release](https://github.com/docker-pet/caddy/actions/workflows/update-and-release.yml/badge.svg)](https://github.com/docker-pet/caddy/actions/workflows/update-and-release.yml)

Automatically releases a new version when a new version of Outline VPN is released.

## Plugin list

- `github.com/iamd3vil/caddy_yaml_adapter`
- `github.com/mholt/caddy-l4`
- `github.com/Jigsaw-Code/outline-ss-server/outlinecaddy`

## Base config file

`/etc/caddy/config/caddy.yaml`

## Supported platforms

- linux/amd64
- linux/arm64

## Docker image

`ghcr.io/docker-pet/caddy:latest`