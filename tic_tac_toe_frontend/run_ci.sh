#!/usr/bin/env bash
set -euo pipefail

# Ensure we're in the Flutter app root.
cd "$(dirname "$0")"

if ! command -v flutter >/dev/null 2>&1; then
  echo "Flutter is not installed or not on PATH."
  exit 127
fi

case "${1:-all}" in
  bootstrap)
    flutter pub get
    ;;
  analyze)
    flutter pub get
    flutter analyze
    ;;
  test)
    flutter pub get
    flutter test
    ;;
  all)
    flutter pub get
    flutter analyze
    flutter test
    ;;
  *)
    echo "Usage: $0 {bootstrap|analyze|test|all}"
    exit 1
    ;;
esac
