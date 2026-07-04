---
cssclasses:
  - finance-os
bereich: dashboard
---

<div class="fos-hero">
  <div class="fos-hero-title">💰 Finance OS</div>
  <div class="fos-hero-subtitle">Persönliches Finanz-Cockpit für Vermögen, Investments, Immobilien, Kredite, Cashflow und Monatsreviews.</div>
  <div class="fos-badge-row">
    <span class="fos-badge">Obsidian</span>
    <span class="fos-badge">Dataview</span>
    <span class="fos-badge">Tasks</span>
    <span class="fos-badge">Private Daten lokal</span>
  </div>
</div>

<div class="fos-grid">
  <div class="fos-card"><div class="fos-kpi-label">Nettovermögen</div><div class="fos-kpi-value">— €</div><div class="fos-kpi-note">aus letztem lokalen Monatsreport</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Cashflow</div><div class="fos-kpi-value">— €</div><div class="fos-kpi-note">aktueller Monat</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Sparquote</div><div class="fos-kpi-value">— %</div><div class="fos-kpi-note">Ziel: >30%</div></div>
  <div class="fos-card"><div class="fos-kpi-label">Investmentquote</div><div class="fos-kpi-value">— %</div><div class="fos-kpi-note">ETF + Bitcoin + Sonstiges</div></div>
</div>

<div class="fos-nav">
  <a href="💰 Vermögen.md">💰 Vermögen</a>
  <a href="📈 Investments/📈 Investments.md">📈 Investments</a>
  <a href="Immobilien.md">🏡 Immobilien</a>
  <a href="🏦 Kredite.md">🏦 Kredite</a>
  <a href="💳 Ausgaben.md">💳 Ausgaben</a>
  <a href="💼 Einkommen.md">💼 Einkommen</a>
  <a href="📅 Monatsreports/📅 Monatsreports.md">📅 Monatsreports</a>
  <a href="🎯 Ziele.md">🎯 Ziele</a>
</div>

## Executive Summary

> [!info]+ Letzter Monatsreport
> ```dataview
> TABLE WITHOUT ID file.link AS "Monat", nettovermoegen AS "Nettovermögen", cashflow AS "Cashflow", sparquote AS "Sparquote", schulden AS "Schulden"
> FROM "99 Finances/📅 Monatsreports"
> WHERE typ = "monatsreport"
> SORT monat DESC
> LIMIT 1
> ```

<div class="fos-grid two">
  <div class="fos-card soft">
    <div class="fos-kpi-label">Liquidität</div>
    <div class="fos-progress"><span style="width: 35%"></span></div>
    <div class="fos-kpi-note">Platzhalter. Später aus Cash / Monatsausgaben berechnen.</div>
  </div>
  <div class="fos-card soft">
    <div class="fos-kpi-label">Schuldenabbau</div>
    <div class="fos-progress"><span style="width: 22%"></span></div>
    <div class="fos-kpi-note">Platzhalter. Zielwerte lokal definieren.</div>
  </div>
</div>

## Offene Finanzaufgaben

```tasks
not done
path includes 99 Finances
sort by due
```

## Letzte Reports

```dataview
LIST
FROM "99 Finances/📅 Monatsreports"
WHERE typ = "monatsreport"
SORT monat DESC
LIMIT 6
```
