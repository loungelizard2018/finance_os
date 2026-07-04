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

```dataviewjs
const reports = dv.pages('"99 Finances/📅 Monatsreports"')
  .where(p => p.typ === "monatsreport")
  .sort(p => p.monat, 'desc');

const latest = reports.length ? reports[0] : null;
const previous = reports.length > 1 ? reports[1] : null;

const euro = v => typeof v === 'number'
  ? new Intl.NumberFormat('de-DE', { style: 'currency', currency: 'EUR', maximumFractionDigits: 0 }).format(v)
  : '— €';
const pct = v => typeof v === 'number'
  ? `${new Intl.NumberFormat('de-DE', { maximumFractionDigits: 1 }).format(v)} %`
  : '— %';
const diff = (a, b) => typeof a === 'number' && typeof b === 'number'
  ? a - b
  : null;
const noteDiff = v => typeof v === 'number'
  ? `${v >= 0 ? '+' : ''}${euro(v)} ggü. Vormonat`
  : 'aus letztem lokalen Monatsreport';

const netDiff = latest && previous ? diff(latest.nettovermoegen, previous.nettovermoegen) : null;
const investQuote = latest && latest.nettovermoegen && latest.investments
  ? latest.investments / latest.nettovermoegen * 100
  : null;

const cards = [
  ['Nettovermögen', euro(latest?.nettovermoegen), noteDiff(netDiff)],
  ['Cashflow', euro(latest?.cashflow), latest?.monat ? `Monat ${latest.monat}` : 'aktueller Monat'],
  ['Sparquote', pct(latest?.sparquote), 'Ziel: >30%'],
  ['Investmentquote', pct(investQuote), 'Investments / Nettovermögen']
];

dv.el('div', cards.map(c => `
  <div class="fos-card">
    <div class="fos-kpi-label">${c[0]}</div>
    <div class="fos-kpi-value">${c[1]}</div>
    <div class="fos-kpi-note">${c[2]}</div>
  </div>`).join(''), { cls: 'fos-grid' });
```

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
> TABLE WITHOUT ID file.link AS "Monat", nettovermoegen AS "Nettovermögen", cash AS "Cash", investments AS "Investments", schulden AS "Schulden", cashflow AS "Cashflow", sparquote AS "Sparquote"
> FROM "99 Finances/📅 Monatsreports"
> WHERE typ = "monatsreport"
> SORT monat DESC
> LIMIT 1
> ```

```dataviewjs
const reports2 = dv.pages('"99 Finances/📅 Monatsreports"')
  .where(p => p.typ === "monatsreport")
  .sort(p => p.monat, 'desc');
const r = reports2.length ? reports2[0] : null;

function bar(label, value, note) {
  const width = Math.max(0, Math.min(100, value || 0));
  return `<div class="fos-card soft"><div class="fos-kpi-label">${label}</div><div class="fos-progress"><span style="width:${width}%"></span></div><div class="fos-kpi-note">${note}</div></div>`;
}

let liquidity = r && r.cash && r.ausgaben ? (r.cash / Math.max(r.ausgaben, 1)) * 100 : 0;
let debtRatio = r && r.schulden && r.immobilien ? (1 - (r.schulden / Math.max(r.immobilien, 1))) * 100 : 0;

dv.el('div', [
  bar('Liquidität', liquidity, r ? 'Cash im Verhältnis zu Monatsausgaben' : 'noch kein Monatsreport'),
  bar('Immobilien-Eigenkapital', debtRatio, r ? 'Immobilienwert abzüglich Schulden' : 'noch kein Monatsreport')
].join(''), { cls: 'fos-grid two' });
```

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
