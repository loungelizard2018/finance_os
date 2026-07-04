---
cssclasses:
  - finance-os
bereich: ausgaben
---

# 💳 Ausgaben

> [!summary]
> Finanzguru bleibt führend für Einzelbuchungen. Finance OS speichert nur verdichtete Monatswerte, Entscheidungen und Optimierungsideen.

<div class="fos-grid three">
  <div class="fos-card"><div class="fos-kpi-label">Fixkosten</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Variabel</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Einsparpotenzial</div><div class="fos-kpi-value">— €</div></div>
</div>

## Fixkostenblöcke

- Wohnen
- Kredite
- Versicherungen
- Mobilität
- Kinder
- Abos
- Energie
- Kommunikation

## Variable Kosten

- Lebensmittel
- Freizeit
- Reisen
- Gesundheit
- Sonstiges

## Monatswerte

```dataview
TABLE WITHOUT ID monat AS "Monat", fixkosten AS "Fixkosten", variable_kosten AS "Variabel", ausgaben AS "Ausgaben", cashflow AS "Cashflow"
FROM "99 Finances/📅 Monatsreports"
WHERE typ = "monatsreport"
SORT monat DESC
```

## Aufgaben

- [ ] Finanzguru Kategorien monatlich prüfen
- [ ] Abos prüfen
- [ ] Versicherungen prüfen
- [ ] Verträge prüfen
