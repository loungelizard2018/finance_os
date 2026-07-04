#!/usr/bin/env bash
set -euo pipefail
ROOT="${1:-$HOME/Documents/finance_os}"
MSG="${2:-finance_os cockpit import}"
cd "$ROOT"

git status --short
git add .
git commit -m "$MSG"
git status --short
