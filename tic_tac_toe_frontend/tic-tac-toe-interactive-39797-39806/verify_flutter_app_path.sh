#!/usr/bin/env bash
set -euo pipefail

APP_DIR="tic_tac_toe_frontend"
REQUIRED=("pubspec.yaml" "lib/main.dart" "android/app/src/main/AndroidManifest.xml")

if [[ ! -d "${APP_DIR}" ]]; then
  echo "Missing Flutter app directory: ${APP_DIR}"
  exit 1
fi

cd "${APP_DIR}"

MISSING=0
for f in "${REQUIRED[@]}"; do
  if [[ ! -f "${f}" ]]; then
    echo "Missing required file: ${f}"
    MISSING=1
  fi
done

if [[ "${MISSING}" -ne 0 ]]; then
  echo "Flutter app root verification failed."
  exit 2
fi

echo "Flutter app root verified at: $(pwd)"
exit 0
