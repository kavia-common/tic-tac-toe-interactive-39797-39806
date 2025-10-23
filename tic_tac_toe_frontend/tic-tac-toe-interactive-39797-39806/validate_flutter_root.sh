#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="$SCRIPT_DIR/tic_tac_toe_frontend"

echo "Workspace root: $SCRIPT_DIR"
echo "Expected Flutter project: $APP_DIR"

if [ -f "$APP_DIR/pubspec.yaml" ] && [ -d "$APP_DIR/lib" ] && [ -d "$APP_DIR/android" ]; then
  echo "OK: Flutter project detected."
  exit 0
else
  echo "ERROR: Flutter project not found at $APP_DIR" >&2
  echo "Contents of workspace root:" >&2
  ls -la "$SCRIPT_DIR" >&2
  exit 1
fi
