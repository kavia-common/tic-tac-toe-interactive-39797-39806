#!/usr/bin/env bash
set -euo pipefail

# Delegate into the Flutter app helper regardless of current working dir.
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
APP_SCRIPT="${SCRIPT_DIR}/tic_tac_toe_frontend/run_ci.sh"

if [[ ! -x "${APP_SCRIPT}" ]]; then
  echo "Error: App CI script not found at ${APP_SCRIPT}"
  exit 1
fi

exec "${APP_SCRIPT}" "${@:-all}"
