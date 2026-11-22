---
name: lernen
description: Gelerntes aus einem Gespräch festhalten, am Ende den Stand sichern und in den gemeinsamen Drive schreiben. Laden, wenn Domi «merken», «merk dir das», «gute Nacht», «ich mach Schluss», «Feierabend», «fertig für heute», «das wars» oder «bis morgen» sagt, wenn er ein To-do als erledigt meldet, wenn er etwas korrigiert hat und am Ende jeder längeren Sitzung von selbst.
---

# Lernen

Damit jedes Gespräch die Zusammenarbeit besser macht. Ohne diesen Schritt kommen dieselben Fehler wieder, obwohl Domi sie schon korrigiert hat.

## Wann

- **Sofort**, wenn Domi etwas korrigiert («so nicht», «falsch verstanden», «sag immer …»).
- **Am Ende jedes Gesprächs**, bevor du dich verabschiedest.
- **Zwischendurch**, wenn mehrere Entscheide gefallen sind.

## Was ein Learning ist

Drei Fragen, alle drei mit Ja:
1. Würde es dein Verhalten in einem künftigen Gespräch ändern?
2. Gilt es über heute hinaus? (Was heute passiert ist, ist Stand, kein Learning.)
3. Steht es noch nirgends? Vorher suchen (`grep -ril <stichwort> .`). Steht es schon da, dort ergänzen.

Domis Worte im Original, kurz, mit Datum. Deine Deutung als deine kennzeichnen.

## Wohin es gehört

| Art | Ort |
|---|---|
| Wie Domi arbeiten will, feste Regeln | `CLAUDE.md` |
| Wie Texte an Kunden klingen sollen | Skill `kundentext` |
| Was über die Agentur gilt (Ablauf, Preise, Texte) | `wissen/` |
| Was zu einem Werkzeug gelernt wurde | `learnings.md` im Skill des Werkzeugs |
| Ein Ablauf, der zweimal getragen hat | ein neuer Skill |
| Was heute passiert ist, was offen ist | `wissen/stand.md`, neuer Eintrag mit Datum oben |

## Schluss-Check

Bei «gute Nacht», «ich mach Schluss», «bis morgen» vor der Antwort vier Dinge prüfen, mit Befehlen, nicht aus dem Kopf:

1. **Gelernt.** Das Gespräch durchgehen: jede Korrektur, jedes «nein», jedes «ja genau», jeder eigene Fehler. Für jedes Learning prüfen, ob es abgelegt ist. Fehlt eines, jetzt ablegen.
2. **Gesichert.** Alles, was heute entstanden ist, liegt als Datei in diesem Ordner, nicht nur im Gespräch (`ls -lt` und nach heute filtern).
3. **Stand.** `wissen/stand.md` hat oben einen Eintrag von heute: was passiert ist, was unverschickt liegt, was offen ist, womit der nächste Start anfängt.
4. **In den gemeinsamen Drive.** Damit Chris den Stand sieht:
   - `wissen/stand.md` als `Stand Domis Büro.md` in den Ordner «Limited Strip» kopieren.
   - In den Listen «Prozessoptimierung» und «Automatisierung» die Spalte «Stand» nachführen: «erledigt» mit Datum, «in Arbeit», neue Aufgaben als neue Zeile.
   - Danach zurücklesen, ob es wirklich dort steht.
   - Ist der Drive nicht erreichbar: Domi sagen, was er von Hand eintragen muss, und es im Stand unter «noch nachzutragen» festhalten.

Dieser vierte Punkt gilt nicht nur beim Abschied. Auch wenn Domi mitten am Tag sagt «P2 ist fertig», wird die Liste im Drive sofort nachgeführt.

Dann die Antwort an Domi, drei bis fünf Zeilen: was du dir gemerkt hast, was gesichert ist, womit es weitergeht. Offene Fragen an ihn stehen als offen da, nie als entschieden.

## Was kein Learning ist

Abgeschlossene Arbeit als Protokoll. Dein Plan für morgen ohne Domis Zustimmung. Zwischenstände, die in einer Woche niemand mehr braucht.
