---
type: cockpit
status: template
tags:
  - finance_os
  - cockpit
  - template
cssclasses:
  - finance-os
---

# 🏠 Finance OS Cockpit

> [!summary] Steuerungsziel
> Ein öffentliches, neutrales Obsidian-Cockpit für private Finanzorganisation.  
> Keine echten Namen, Beträge, Adressen, Konten, Verträge oder App-Exporte.

---

## 🚦 Status Board

| Bereich | Status | Fokus |
|---|---|---|
| Finanzstruktur | 🟢 Template | Ordner & Dateien stehen |
| Finanz-App | 🟡 offen | Kategorien sauber mappen |
| Immobilien | 🟡 offen | Objekte separat führen |
| Kredite | 🟡 offen | Zins, Rate, Laufzeit dokumentieren |
| Familie | 🟡 offen | Verpflichtungen von Vermögen trennen |
| Investments | ⚪ später | erst nach echtem Überschuss |
| Monatsreport | ⚪ offen | Ist/Plan monatlich prüfen |

---

## 🧭 Schnellzugriff

| Bereich | Datei |
|---|---|
| 🏠 Immobilien | [[Immobilien/00_Immobilien-Uebersicht]] |
| 🏦 Kredite | [[Kredite/00_Kredit-Uebersicht]] |
| 👨‍👧 Familie & Ausbildung | [[Familie/00_Familie-Uebersicht]] |
| 📈 Investments | [[Investments/00_Investments]] |
| 📅 Monatsreport | [[Monatsreports/YYYY-MM]] |
| ⚙️ Finanz-App-Struktur | [[_System/01_Finanzguru-Struktur]] |
| ✅ CAT-Aufgaben | [[_System/02_CAT-Aufgaben]] |

---

# 1. Entscheidungslogik

## 🏦 Kredite und Sondertilgung

| Priorität | Regel |
|---:|---|
| 1 | Liquiditätsreserve sichern |
| 2 | Immobilien- und Notfallrücklagen stabilisieren |
| 3 | private, nicht steuerlich entlastete Kredite bewerten |
| 4 | vermietete Objekte separat nach Steuer-/Objektlogik prüfen |
| 5 | Investments nur aus echtem Überschuss erhöhen |

> [!important]
> Eine Kreditrate ist Cashflow-Abfluss. Wirtschaftlich besteht sie aus Zinskosten und Tilgung. Für Entscheidungen sollten beide Sichtweisen getrennt werden.

---

## 🏠 Immobilienlogik

| Nutzung | Steuerung |
|---|---|
| selbstgenutzt | private Wohnkosten, Finanzierung, Rücklagen |
| vermietet | eigene Objekt-P&L, Nebenkosten, Steuerlogik |
| gemischt/unklar | zuerst klären, dann kategorisieren |

```text
Mieteinnahmen
./. Finanzierung
./. umlagefähige Nebenkosten
./. nicht umlagefähige Kosten
./. Rücklage
= Objekt-Cashflow
```

---

## 👨‍👧 Familie & Ausbildung

| Zahlungstyp | Einordnung |
|---|---|
| Unterhalt | laufende Familienverpflichtung |
| Miete / Studium / Schule | Ausbildungskosten |
| Sparvertrag / Depot | Kindervermögen |
| Einmalige Hilfe | Sonderausgabe / Klärung |

> [!warning]
> Laufende Familienverpflichtungen nicht als Sparen oder Investment ausweisen.

---

# 2. Zielkategorien

| Kategorie | Zweck |
|---|---|
| 01 Vermietung Objekt A | Mietobjekt separat |
| 02 Eigenheim Finanzierung | private Hauskredite |
| 03 Eigenheim Betriebskosten | Energie, Wasser, Abgaben |
| 04 Eigenheim Versicherungen | Gebäude, Hausrat |
| 05 Immobilien Instandhaltung | Reparaturen, Rücklagen |
| 06 Familie & Ausbildung | Unterhalt, Studium, Schule |
| 07 Kindervermögen | Sparpläne, Depots, Bausparer |
| 08 Sparen & Investieren | ETF, Tagesgeld, Krypto |
| 09 Bank & Finanzkosten | Konten, Karten, Gebühren |
| 10 Abos & Digital | Streaming, Apps, Hosting |
| 99 Klärung | temporär für unklare Buchungen |

---

# 3. Aufgaben

## Heute / überfällig

```tasks
not done
due before tomorrow
path includes templates
sort by due
limit 20
```

## Finanz-App / Stammdaten

```tasks
not done
(tags include #cat/stammdaten) OR (tags include #ctx/finanzguru)
path includes templates
sort by due
limit 20
```

## Immobilien

```tasks
not done
tags include #cat/immobilien
path includes templates
sort by due
limit 20
```

## Monatsabschluss

```tasks
not done
tags include #cat/monatlich
path includes templates
sort by due
limit 20
```

---

# 4. Monatscheck

| Prüfung | Status |
|---|---|
| Kategorien sauber? | offen |
| Objektkosten getrennt? | offen |
| Kredite vollständig? | offen |
| Versicherungen objektweise? | offen |
| Familienzahlungen korrekt? | offen |
| Investments aus echtem Überschuss? | offen |
| Rücklagen aktualisiert? | offen |

---

# 5. Stop-Regeln

> [!danger] Keine Optimierung ohne echten Cashflow
> Erst nach sauberem Monatsreport entscheiden über Sondertilgung, Sparraten, Investments, Kündigungen oder Umschichtungen.
