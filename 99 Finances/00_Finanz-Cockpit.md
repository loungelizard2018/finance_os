---
type: cockpit
bereich: finanzen
status: active
updated: 2026-07-04
---

# Finanz-Cockpit

## Einstieg

| Bereich | Link |
|---|---|
| Monatssteuerung | [[Cockpit/01_Monatssteuerung]] |
| Immobilien | [[Cockpit/02_Immobilien-Cockpit]] |
| Kredite | [[Cockpit/03_Kredite-Cockpit]] |
| Kinder-Sparen | [[Cockpit/04_Kinder-Sparen]] |
| Auffälligkeiten | [[Cockpit/05_Auffaelligkeiten]] |
| Immobilien-Übersicht | [[Immobilien/00_Immobilien-Uebersicht]] |
| Kredit-Übersicht | [[Kredite/00_Kredit-Uebersicht]] |
| Monatsreport Juni 2026 | [[Monatsreports/2026-06]] |

## Steuerungslogik

| Geldfluss | Behandlung |
|---|---|
| ING → Raiba/Gaimersheim | interne Umbuchung, nicht als Kosten zählen |
| Raiba → Immobilienkredite | Objektfinanzierung je Immobilie |
| Schwäbisch Hall 400 € | Kinder-Bausparen Grundrate, 4 × 100 € |
| Schwäbisch Hall 4 × 50 € | Kinder-Bausparen Zusatzrate |
| Schwäbisch Hall 500 € / 20192602S01 | Odendorf-Finanzierung / Bauspardarlehen |

## Operative Prüfungen

- [ ] Dataview rendert ohne Fehler #ctx/obsidian #cat/finanzguru
- [ ] Odendorf enthält nicht mehr die 400 € Kinder-Bausparen #cat/immobilien #ctx/finanzguru
- [ ] Kinder-Sparen zeigt 600 €/Monat #cat/familie #ctx/finanzguru
- [ ] ING → Raiba 2.700 € ist als Umbuchung behandelt #cat/finanzen #ctx/finanzguru
- [ ] Wolfsburg-Verkaufsszenario separat bewerten #cat/immobilien #ctx/entscheidung

## Datenquellen

CSV-Daten liegen unter:

```text
99 Finances/data/finanzguru/
```

Import-/Reparaturlog:

```text
99 Finances/_System/import_repair_2026-07-04.md
```
