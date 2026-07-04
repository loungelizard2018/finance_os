# FinanceOS Struktur

## Zielstruktur

```text
99 Finances/
├── 00_Finanz-Cockpit.md
├── _System/
├── Analyse/
├── Cockpit/
├── Dokumente/
├── Familie/
├── Immobilien/
├── Investments/
├── Kredite/
├── Monatsreports/
├── Vorlagen/
├── data/finanzguru/
└── logs/
```

## Regeln

| Thema | Ablage |
|---|---|
| Dashboard / Steuerung | `Cockpit/` |
| Objektkarten | `Immobilien/` |
| Darlehen / Kreditübersicht | `Kredite/` |
| Monatliche Auswertung | `Monatsreports/` |
| Roh-/Normalisierte Daten | `data/finanzguru/` |
| technische Logs | `logs/` oder `_System/` |

## Buchungslogik

| Buchung | Kategorie/Logik |
|---|---|
| ING → Raiba | Umbuchung, nicht Kosten |
| Raiba → Wolfsburg/Odendorf/Kösching | Finanzierung je Objekt |
| Schwäbisch Hall 400 € | Kinder-Bausparen Grundrate |
| 4 × 50 € Kinder | Kinder-Bausparen Zusatzrate |
| Schwäbisch Hall 500 € 20192602S01 | Odendorf-Finanzierung |
