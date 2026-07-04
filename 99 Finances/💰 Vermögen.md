---
cssclasses:
  - finance-os
bereich: vermoegen
---

# 💰 Vermögen

<div class="fos-grid">
  <div class="fos-card"><div class="fos-kpi-label">Cash</div><div class="fos-kpi-value">— €</div><div class="fos-kpi-note">Konten + Tagesgeld</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Investments</div><div class="fos-kpi-value">— €</div><div class="fos-kpi-note">ETF, Bitcoin, Gold</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Immobilien</div><div class="fos-kpi-value">— €</div><div class="fos-kpi-note">Marktwerte lokal</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Schulden</div><div class="fos-kpi-value">— €</div><div class="fos-kpi-note">Restschulden</div></div>
</div>

## Asset-Bestand

```dataview
TABLE WITHOUT ID file.link AS "Asset", klasse AS "Klasse", wert AS "Wert", zielgewicht AS "Ziel"
FROM "99 Finances"
WHERE typ = "asset" OR typ = "investment"
SORT wert DESC
```

## Nettovermögen über Monatsreports

```dataview
TABLE WITHOUT ID monat AS "Monat", nettovermoegen AS "Nettovermögen", cash AS "Cash", investments AS "Investments", immobilien AS "Immobilien", schulden AS "Schulden"
FROM "99 Finances/📅 Monatsreports"
WHERE typ = "monatsreport"
SORT monat DESC
```
