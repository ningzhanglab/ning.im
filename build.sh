#!/usr/bin/env bash
# Build the site with a pinned Hugo version (used by Cloudflare Workers Builds).
set -euo pipefail
HUGO_VERSION="${HUGO_VERSION:-0.110.0}"
if ! command -v hugo >/dev/null || ! hugo version | grep -q "v${HUGO_VERSION}"; then
  mkdir -p .bin
  curl -sSL "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" | tar -xz -C .bin hugo
  export PATH="$PWD/.bin:$PATH"
fi
hugo version
hugo --minify=false
