#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_DIR="$SCRIPT_DIR/tic_tac_toe_frontend"

echo "Running flutter pub get in: $APP_DIR"
cd "$APP_DIR"
flutter pub get
echo "Done."
