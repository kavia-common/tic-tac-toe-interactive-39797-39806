#!/usr/bin/env bash
set -euo pipefail
# Run from the Flutter project root
flutter pub get
CI=true flutter test
