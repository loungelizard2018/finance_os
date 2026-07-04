---
cssclasses:
  - finance-os
bereich: einkommen
---

# 💼 Einkommen

<div class="fos-grid three">
  <div class="fos-card"><div class="fos-kpi-label">Nettoeinkommen</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Bonus</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Weitere Einnahmen</div><div class="fos-kpi-value">— €</div></div>
</div>

## Einnahmequellen

- Gehalt
- Bonus
- Mieteinnahmen
- Sonstiges

## Monatswerte

```dataview
TABLE WITHOUT ID monat AS "Monat", einkommen AS "Einkommen", bonus AS "Bonus", mieten AS "Mieten", cashflow AS "Cashflow"
FROM "99 Finances/📅 Monatsreports"
WHERE typ = "monatsreport"
SORT monat DESC
```

## Aufgaben

- [ ] Einkommensquellen erfassen
- [ ] Bonus getrennt ausweisen
- [ ] Weitere Einnahmen separat notieren
