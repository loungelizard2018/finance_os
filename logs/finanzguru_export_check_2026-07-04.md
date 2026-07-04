---
typ: import-log
quelle: Finanzguru Export 2026-07-04
---

# Finanzguru Exportprüfung 2026-07-04

## Ergebnis

Der Export wurde gelesen, normalisiert und als Obsidian-Importpaket aufbereitet.

## Prüfungen

| Prüfung | Ergebnis |
|---|---|
| ING→Raiba 2.700 € | 28 Buchungen gefunden; normalisiert als Finanzen/Umbuchung zwischen Konten. |
| Kinder-Bausparen Grundrate | 27 Sammelbuchungen à 400 € gefunden. |
| Kinder-Bausparen Zusatzrate | 108 Einzelbuchungen à 50 € gefunden. |
| Odendorf Schwäbisch Hall | 27 Darlehensraten à 500 € gefunden. |
| Noch sichtbare Finanzguru-Inkonsistenz | 108 Kinder-Zusatzraten stehen im Roh-Export noch nicht unter Kinder, sondern unter Sparen/Bausparvertrag; im lokalen Import normalisiert. |
| Zukunftsbuchungen/Prognosen | 8 Buchungen nach 2026-07-04 im Export enthalten. Für Monatsreport wurde 2026-06 als letzter voller Monat genutzt. |

## Bereinigungslogik im lokalen Import

| Regel | Ziel |
|---|---|
| `-400 €` Schwäbisch Hall mit Vertragsnummern `1050...` | `Kinder / Sparen - Bausparen Grundrate` |
| `-50 €` je Kind mit Bauspartext | `Kinder / Sparen - Bausparen Zusatzrate` |
| `-500 €` Schwäbisch Hall `20192602S01` | `Wohnen / Odendorf - Finanzierung` |
| `±2.700 €` ING/Raiba | `Finanzen / Umbuchung zwischen Konten` |

## Wichtig

Die Normalisierung ändert nicht den Finanzguru-Export selbst. Sie ist eine lokale Auswertungslogik für Obsidian.
