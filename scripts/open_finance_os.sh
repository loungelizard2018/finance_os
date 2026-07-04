#!/usr/bin/env bash
set -euo pipefail
ROOT="${1:-$HOME/Documents/finance_os}"
cd "$ROOT"
echo "FinanceOS: $ROOT"
echo "Startseite: 00_Finance-Cockpit.md"
find . -maxdepth 2 -type f \( -name '*.md' -o -name '*.csv' \) | sort | sed 's#^./##'
