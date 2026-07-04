---
cssclasses:
  - finance-os
bereich: monatsreports
---

# 📅 Monatsreports

## Reports

```dataview
TABLE WITHOUT ID file.link AS "Report", monat AS "Monat", nettovermoegen AS "Nettovermögen", cashflow AS "Cashflow", sparquote AS "Sparquote", schulden AS "Schulden"
FROM "99 Finances/📅 Monatsreports"
WHERE typ = "monatsreport"
SORT monat DESC
```

## Monatsabschluss-Prozess

1. Finanzguru prüfen.
2. Monatswerte lokal in neuem Report eintragen.
3. Auffälligkeiten notieren.
4. Maßnahmen für den nächsten Monat festlegen.
5. Dashboard prüfen.

## Minimaldaten

Für den Start reichen diese Werte:

- nettovermoegen
- cash
- investments
- bitcoin
- immobilien
- schulden
- einkommen
- ausgaben
- cashflow
- sparquote
