# Stage 1: Build custom Caddy
FROM caddy:2-builder AS builder

COPY go.mod go.sum ./
RUN go mod download

RUN xcaddy build \
  --with github.com/iamd3vil/caddy_yaml_adapter \
  --with github.com/mholt/caddy-l4 \
  --with github.com/Jigsaw-Code/outline-ss-server/outlinecaddy

# Stage 2: Final image
FROM alpine:latest

RUN apk add --no-cache ca-certificates

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

ENTRYPOINT ["caddy"]
CMD ["run", "--config", "/etc/caddy/config/app.yaml", "--adapter", "yaml", "--watch"]

EXPOSE 80
EXPOSE 443
EXPOSE 9091