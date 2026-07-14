#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PET_ID="$(jq -r '.id' "$ROOT_DIR/pet/pet.json")"
DEST_DIR="${CODEX_HOME:-$HOME/.codex}/pets/$PET_ID"

mkdir -p "$DEST_DIR"
cp "$ROOT_DIR/pet/pet.json" "$DEST_DIR/pet.json"
cp "$ROOT_DIR/pet/spritesheet.webp" "$DEST_DIR/spritesheet.webp"

echo "Installed $PET_ID to $DEST_DIR"
