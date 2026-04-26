# Multi-stage build: compile the Hugo site, then serve via nginx.
# Designed for Coolify or any Docker-based host.

# ---- Build stage ----
FROM alpine:3.19 AS builder

ARG HUGO_VERSION=0.124.1

RUN apk add --no-cache curl tar git ca-certificates && \
    curl -sSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" \
      | tar -xz -C /usr/local/bin hugo && \
    hugo version

WORKDIR /src
COPY . .

# Build static site into ./public
RUN hugo --minify --gc

# ---- Serve stage ----
FROM nginx:1.27-alpine

# Replace default nginx config with our static-site config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy built site
COPY --from=builder /src/public /usr/share/nginx/html

EXPOSE 80

# Health check that Coolify can use
HEALTHCHECK --interval=30s --timeout=5s --retries=3 \
  CMD wget -qO- http://localhost/ > /dev/null || exit 1
