#!/usr/bin/env bash
set -euo pipefail

APP_DIR="tic_tac_toe_frontend"
echo "Changing directory to: ${APP_DIR}"
cd "${APP_DIR}" || {
  echo "Failed to change directory. Ensure the path exists."
  exit 1
}
pwd
