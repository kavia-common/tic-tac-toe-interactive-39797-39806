#!/usr/bin/env bash
set -euo pipefail

# Verify Flutter app root by checking required files.
if [[ ! -f "pubspec.yaml" || ! -f "lib/main.dart" ]]; then
  echo "Error: Not in Flutter app root. pubspec.yaml or lib/main.dart missing."
  echo "Tip: cd to tic-tac-toe-interactive-39797-39806/tic_tac_toe_frontend and re-run."
  exit 2
fi

# If Flutter is available, proceed; otherwise, print a helpful message.
if ! command -v flutter &>/dev/null; then
  echo "Flutter SDK not found in PATH. Ensure CI environment has Flutter installed."
  exit 3
fi

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
