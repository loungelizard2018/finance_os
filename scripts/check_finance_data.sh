#!/usr/bin/env bash
set -euo pipefail
ROOT="${1:-$HOME/Documents/finance_os}"
cd "$ROOT"

echo "FinanceOS Datenprüfung"
echo "===================="
for f in \
  data/finanzguru/buchungen_normalisiert.csv \
  data/finanzguru/monat_kategorien.csv \
  data/finanzguru/immobilien_monat.csv \
  data/finanzguru/vertraege_monat.csv \
  data/finanzguru/konten_latest.csv; do
  if [ -f "$f" ]; then
    echo "OK: $f ($(wc -l < "$f") Zeilen)"
  else
    echo "FEHLT: $f"
  fi
done

echo
echo "Git-Status:"
git status --short || true
