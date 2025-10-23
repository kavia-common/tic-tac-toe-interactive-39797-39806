#!/usr/bin/env bash
set -euo pipefail

ROOT="$(pwd)"
echo "Checking Flutter app root at: $ROOT"

MISSING=0
for f in pubspec.yaml lib/main.dart android/app/src/main/AndroidManifest.xml; do
  if [[ ! -f "$f" ]]; then
    echo "Missing required file: $f"
    MISSING=1
  else
    echo "Found: $f"
  }
done

if [[ $MISSING -ne 0 ]]; then
  echo "Root check failed."
  exit 1
fi

echo "Flutter app root looks valid."
exit 0
