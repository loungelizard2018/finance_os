---
typ: cockpit
titel: Finance Cockpit
stand: 2026-07-04
quelle: Finanzguru Export 2026-07-04
letzter_voller_monat: 2026-06
status: aktiv
---

# Finance Cockpit

> Einstiegspunkt für die lokale Finanzsteuerung. Datenbasis: Finanzguru-Export vom 2026-07-04, lokal normalisiert für FinanceOS.

## Ampel

| Bereich | Status | Kommentar |
|---|---:|---|
| Datenimport | 🟢 | Export eingelesen, Normalisierung liegt unter `data/finanzguru/`. |
| Umbuchungen | 🟢 | ING→Raiba und Raiba→Kreditkonten getrennt. |
| Kinder-Bausparen | 🟢 | 400 € Grundrate + 4×50 € Zusatzrate als Kinder/Sparen getrennt. |
| Immobilien | 🟡 | Objektlogik vorhanden; Feinschliff bei Betriebskosten/Versicherungen offen. |
| Kreditübersicht | 🟡 | Darlehensstände vorhanden; Zins/Tilgung noch nicht getrennt. |

## Monatsstatus 2026-06

| Kennzahl | Wert |
|---|---:|
| Budgetrelevante Einnahmen | 14.247,90 € |
| Budgetrelevante Ausgaben | 18.738,61 € |
| Budgetsaldo | -4.490,71 € |
| Immobilien netto | -2.609,04 € |
| Kinder-Bausparen | 600,00 € |
| Kredit-/Darlehensstände gesamt | -362.400,72 € |
| Liquide Kontostände gesamt | 71.175,43 € |

## Navigation

| Cockpit | Zweck |
|---|---|
| [[Cockpit/01_Monatssteuerung\|Monatssteuerung]] | Monat verstehen: Einnahmen, Ausgaben, Top-Kategorien. |
| [[Cockpit/02_Immobilien-Cockpit\|Immobilien-Cockpit]] | Kösching, Wolfsburg, Odendorf getrennt steuern. |
| [[Cockpit/03_Kredite-Cockpit\|Kredite-Cockpit]] | Darlehensstände und Finanzierungslogik. |
| [[Cockpit/04_Kinder-Sparen\|Kinder-Sparen]] | Bausparer und Kinderausgaben getrennt. |
| [[Cockpit/05_Auffaelligkeiten\|Auffälligkeiten]] | Prüfliste für falsche Kategorien, Sonderbuchungen, Prognosen. |
| [[Monatsreports/2026-06\|Monatsreport 2026-06]] | Letzter vollständiger Monatsreport. |

## Entscheidungslogik

```text
ING → Raiba                      = interne Umbuchung / Immobilien-Zahlkonto
Raiba → Kreditkonten             = Wohnen / Objekt - Finanzierung
Schwäbisch Hall 400 €            = Kinder / Sparen - Bausparen Grundrate
4 × 50 € je Kind                 = Kinder / Sparen - Bausparen Zusatzrate
Schwäbisch Hall 500 € 20192602S01 = Wohnen / Odendorf - Finanzierung
```

## Nächste operative Schritte

- [ ] `.import.md`-Fragmente in bestehende Übersichtsseiten übernehmen oder bewusst separat lassen.
- [ ] Finanzguru-Kategorien für Kinder-Bausparen final prüfen.
- [ ] Odendorf/Wolfsburg/Kösching je Objekt als eigene Detailseite pflegen.
- [ ] Zins-/Tilgungsanteile später ergänzen, sobald sauber verfügbar.
- [ ] Git-Commit nach Import erzeugen.

## Datenquellen lokal

```text
data/finanzguru/buchungen_normalisiert.csv
data/finanzguru/monat_kategorien.csv
data/finanzguru/immobilien_monat.csv
data/finanzguru/vertraege_monat.csv
data/finanzguru/konten_latest.csv
```
