---
cssclasses:
  - finance-os
bereich: kredite
---

# 🏦 Kredite

<div class="fos-grid three">
  <div class="fos-card"><div class="fos-kpi-label">Restschuld</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Ø Zins</div><div class="fos-kpi-value">— %</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Nächste Zinsbindung</div><div class="fos-kpi-value">—</div></div>
</div>

## Kreditübersicht

```dataview
TABLE WITHOUT ID file.link AS "Kredit", bank AS "Bank", restschuld AS "Restschuld", zins AS "Zins", tilgung AS "Tilgung", rate AS "Rate", zinsbindung AS "Zinsbindung"
FROM "99 Finances/🏦 Kredite"
WHERE typ = "kredit"
SORT zinsbindung ASC
```

## Sondertilgungen

- [ ] Sondertilgungsrechte erfassen
- [ ] Zinsbindungen erfassen
- [ ] Restschulden monatlich prüfen

## Entscheidungslogik

- Sondertilgung nur gegen Opportunitätsrendite prüfen.
- Zinsbindungsende frühzeitig überwachen.
- Liquidität nicht unter Notgroschen reduzieren.
