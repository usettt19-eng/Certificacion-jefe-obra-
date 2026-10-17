#!/usr/bin/env bash
# Genera docs/guia-prompt-maestro.pdf a partir del prompt maestro en Markdown.
set -euo pipefail
cd "$(dirname "$0")/.."
tmp=$(mktemp -d)
pandoc prompts/prompt-maestro-jefe-obra.md -s -o "$tmp/guia.html" \
  --metadata title="Guía – Prompt maestro Jefe de Obra" \
  -c scripts/pdf.css --embed-resources
"${CHROMIUM:-chromium}" --headless --no-sandbox --disable-gpu --no-pdf-header-footer \
  --print-to-pdf=docs/guia-prompt-maestro.pdf "file://$tmp/guia.html"
rm -rf "$tmp"
