---
cssclasses:
  - finance-os
bereich: investments
---

# 📈 Investments

> [!summary]
> Strategie: breit gestreut investieren, regelmäßig nachkaufen, Risikoanteile bewusst begrenzen. Finanzguru bleibt für Buchungen führend; Finance OS speichert verdichtete Werte.

<div class="fos-grid three">
  <div class="fos-card"><div class="fos-kpi-label">ETF</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Bitcoin</div><div class="fos-kpi-value">— €</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Cash Reserve</div><div class="fos-kpi-value">— €</div></div>
</div>

## Portfolio

```dataview
TABLE WITHOUT ID file.link AS "Investment", klasse AS "Klasse", wert AS "Wert", zielgewicht AS "Zielgewicht", plattform AS "Plattform", risiko AS "Risiko"
FROM "99 Finances/📈 Investments"
WHERE typ = "investment"
SORT wert DESC
```

## Aufgaben

- [ ] ETF-Sparplan prüfen
- [ ] Bitcoin-Zielgewicht prüfen
- [ ] Rebalancingbedarf prüfen
- [ ] Verwahrungskonzept prüfen

## Investmentprinzipien

- Kein Produktkauf ohne Zielgewicht.
- Kein Einzelinvestment ohne Exit-Regel.
- Krypto bleibt bewusst begrenzter Risikoanteil.
- Liquidität schlägt Rendite, wenn die Handlungsfähigkeit gefährdet ist.
