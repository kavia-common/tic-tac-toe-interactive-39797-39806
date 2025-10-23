#!/usr/bin/env bash
set -euo pipefail
APP_DIR="tic_tac_toe_frontend"
if [ ! -f "$APP_DIR/pubspec.yaml" ]; then
  echo "Flutter app not found at $APP_DIR"
  exit 1
fi
cd "$APP_DIR"
echo "Running in $(pwd)"
exec "$@"
