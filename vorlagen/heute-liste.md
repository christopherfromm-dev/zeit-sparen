# Vorlage: Heute-Liste

Vorbild: Seite «Heute» im Büro von streckenfliegen.com (`buero/werkzeuge/heute.ts`) und die Lesefassung `Heute.txt`, die jede Nacht nach Drive geht. Im Einsatz seit August 2026.

## Der Grundsatz

**Nichts auf der Liste wird gepflegt. Alles wird ausgerechnet.** Die Liste liest die Daten (Nachrichten, Aufgaben, Rechnungen, Buchungen) und rechnet aus, was heute dran ist. Geht das Werkzeug kaputt, zeigt die Liste falsche Zahlen, die Daten bleiben heil.

Ist nichts offen, steht ein Satz da und sonst nichts.

## Die Blöcke, in dieser Reihenfolge

1. **Wer wartet auf dich.** Die letzte Nachricht kam von der Person, danach ging nichts mehr raus. Ab 2 Tagen rot und zuoberst (die Website verspricht zwei Werktage). Ein Knopf «Antwort erledigt» räumt sie weg, bis sie neu schreibt.
2. **Was heute dran ist.** Offene Aufgaben mit Datum heute oder früher. Nach Thema gruppiert, darin nach Wichtigkeit (1 zuerst, 2 normal, 3 später), darin die ältesten oben. Rot nur, was Wichtigkeit 1 hat **und** seit 7 Tagen liegt.
3. **Wo Geld hängt.** Gestellte Rechnungen, die offen sind, und Rechnungen, die als Entwurf liegen bleiben.
4. **Was sonst unsichtbar liegen bleibt.** Bei Chris: Wer im Camp steht und noch keine Rechnung hat. Diese Karte führt direkt zur Handlung («Rechnung anlegen»), nicht zur Kontaktkarte.

## Aufgaben-Format (eine Datei `aufgaben/offen.md`)

```
- [ ] 2026-11-25 — Text der Aufgabe (thema: Fristen) (prio: hoch) (kontakt: kennung)
- [x] 2026-11-20 — erledigte Aufgabe
```

- Datum = ab wann sie fällig ist.
- `(thema: …)`, `(prio: hoch|tief)` und `(kontakt: …)` sind freiwillig. Fehlt das Thema, entscheiden Wörter im Text (erstes Muster, das passt, gewinnt).
- Harte Fristen stehen als eigenes Thema ganz oben.

## Fallen, die schon Zeit gekostet haben

| Falle | Was passiert ist | Regel |
| :- | :- | :- |
| Erste statt letzte Nachricht des Tages | Kundin schrieb morgens, Antwort kam abends, sie stand 38 Tage auf «wartet» | Am selben Tag gewinnt, was im Verlauf weiter unten steht |
| Abwesenheitsnotizen und Formular-Meldungen | Eine Person stand 36 Tage auf «wartet» wegen einer Abwesenheitsnotiz | Automatische Mails brauchen keine Antwort, herausfiltern |
| Entwürfe zählen mit | Ein Entwurf sagt nichts darüber, wer am Zug ist | Entwürfe und verworfene Nachrichten nicht mitzählen |
| Windows-Zeilenenden | Das Muster fand 1 von 86 Aufgaben | Beim Lesen `\r` mitdenken |
| Alles über 7 Tage rot | Fast die ganze Liste war rot | Rot nur Wichtigkeit 1 und alt |
| Sortiert nach Alter | Steuerfrist stand neben einem Instagram-Text | Nach Thema und Wichtigkeit ordnen (Chris, 08.10.2026) |
| Daten beim Start gelesen und behalten | Neuer Kontakt im laufenden Betrieb nicht sichtbar | Dateien beobachten, Speicher bei Änderung leeren |
| Anmeldung ohne Nachricht | Drei Anmeldungen per Formular erschienen nirgends | Jede Quelle (Formular, Tabelle) muss eine Karte erzeugen können |

## Beim Kunden

- **Lesefassung fürs Handy:** Dieselbe Rechnung zusätzlich als Text (`heute.md`) in Drive. Lesen ja, ändern nein. So aktuell wie der letzte Lauf.
- **Bei Domi:** Quelle ist die Google Tabelle (Buchungen, Künstler), nicht ein Kontaktordner. Blöcke dort: offene Anfragen ohne Antwort, Buchungen ohne Künstlerzusage, «Daten an Künstler gesendet» = nein, «Änderung nachinformiert» = nein, offene Anzahlungen. Freitags dazu die Wochenend-Übersicht (W7).
- Erst bauen, wenn das erste Werkzeug zwei Wochen getragen hat.
