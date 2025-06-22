# Stage 1: Build custom Caddy
FROM caddy:2-builder AS builder

COPY go.mod go.sum ./
RUN go mod download

RUN xcaddy build \
  --with github.com/mholt/caddy-l4 \
  --with github.com/Jigsaw-Code/outline-ss-server/outlinecaddy \
  --with github.com/mholt/caddy-dynamicdns \
  --with github.com/caddy-dns/cloudflare

# Stage 2: Final image
FROM caddy:2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
RUN mkdir -p /outline_generated/
RUN /usr/bin/caddy version
RUN /usr/bin/caddy list-modules --skip-standard --versions

COPY Caddyfile /etc/caddy/Caddyfile

ENTRYPOINT ["caddy"]
CMD ["run", "--config", "/etc/caddy/Caddyfile"]

EXPOSE 80
EXPOSE 443