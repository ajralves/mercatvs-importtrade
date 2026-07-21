#!/usr/bin/env bash

echo "== Bootstrap do Mercatvs =="

./scripts/bootstrap-taskwarrior.sh

echo "✔ Taskwarrior"

echo "Próximas etapas:"
echo "- pnpm install"
echo "- cargo build"
echo "- docker compose up -d"
echo "- pnpm dev"
