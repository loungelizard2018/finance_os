---
cssclasses:
  - finance-os
bereich: immobilien
---

# 🏡 Immobilien

<div class="fos-grid three">
  <div class="fos-card"><div class="fos-kpi-label">Marktwert</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Restschuld</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Eigenkapital</div><div class="fos-kpi-value">— €</div></div>
</div>

## Portfolio

```dataview
TABLE WITHOUT ID file.link AS "Objekt", marktwert AS "Marktwert", restschuld AS "Restschuld", (marktwert - restschuld) AS "Eigenkapital", miete AS "Miete"
FROM "99 Finances/🏡 Immobilien"
WHERE typ = "immobilie"
SORT marktwert DESC
```

## Kennzahlen

- Marktwert
- Restschuld
- Beleihungsquote
- Eigenkapital
- Miete / Kosten / Cashflow
- Zinsbindung

## Aufgaben

```tasks
not done
path includes Immobilien
```

## Datenregel

Echte Adressen und Vertragsdokumente bleiben lokal und werden nicht committed.
