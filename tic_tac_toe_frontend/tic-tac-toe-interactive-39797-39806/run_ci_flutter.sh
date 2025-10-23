#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/tic_tac_toe_frontend"
echo "Running Flutter in $(pwd)"
flutter pub get
flutter analyze
flutter test
