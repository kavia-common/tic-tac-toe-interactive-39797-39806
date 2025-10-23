#!/usr/bin/env bash
set -euo pipefail

APP_DIR="tic_tac_toe_frontend"

cd "$(dirname "$0")/${APP_DIR}"

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
