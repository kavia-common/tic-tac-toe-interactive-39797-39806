#!/usr/bin/env bash
set -euo pipefail

# Find Flutter app directory by locating pubspec.yaml that declares flutter:
APP_DIR="$(grep -RIl --include=pubspec.yaml -m1 '^flutter:' . | xargs -r dirname || true)"

if [[ -z "${APP_DIR}" ]]; then
  # Fallback to known path
  if [[ -f "tic_tac_toe_frontend/pubspec.yaml" ]]; then
    APP_DIR="tic_tac_toe_frontend"
  else
    echo "Error: Could not locate Flutter app directory with a pubspec.yaml."
    exit 1
  fi
fi

echo "Using Flutter app directory: ${APP_DIR}"
cd "${APP_DIR}"

case "${1:-help}" in
  bootstrap)
    flutter pub get
    ;;
  analyze)
    flutter analyze
    ;;
  test)
    flutter test
    ;;
  run)
    flutter run
    ;;
  *)
    echo "Usage: $0 {bootstrap|analyze|test|run}"
    exit 1
    ;;
esac
