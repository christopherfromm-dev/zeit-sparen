---
name: lernen
description: Die Learnings eines Gesprächs mitziehen und am Ende den Schluss-Check machen (gelernt, gesichert auf GitHub, Stand erfasst). Laden, wenn Chris «merken», «gute Nacht», «ich mache Schluss», «ich schliesse den Chat» oder «danke, das wars» sagt, wenn er etwas korrigiert hat und am Ende jeder längeren Sitzung von selbst.
---

# Lernen (Zeit sparen)

Übernommen am 22.11.2026 aus dem Kunstprojekt, angepasst auf dieses
Repository. Chris am 06.10.2026: «bitte alle learnings aus dem gespräch
mitziehen, auch automatisch bei allen chats, dass wir durch jede konversation
immer besser zusammenarbeiten.» Ein Hook erinnert daran
(`.claude/scripts/lernen-erinnerung.sh`).

## Wann

- **Sofort**, wenn er etwas anstreicht oder korrigiert.
- **Am Ende jedes Chats**, bevor die Verabschiedung beantwortet wird.
- **Zwischendurch**, wenn mehrere Entscheide gefallen sind.

## Was ein Learning ist

Drei Fragen, alle drei mit Ja:
1. Würde es mein Verhalten in einer künftigen Sitzung ändern?
2. Gilt es über diesen Chat hinaus? (Ein Tagesstand ist Stand, kein Learning.)
3. Steht es noch nirgends? Vorher greppen: Gedächtnisordner, `CLAUDE.md`,
   Skills. Steht es schon da, dort ergänzen, keine zweite Datei.

Seine Worte im Original, kurz. Meine Deutung als meine kennzeichnen.

## Wohin es gehört

| Art | Ort |
|---|---|
| Wie er arbeiten will | Gedächtnisdatei (type feedback) mit Why und How to apply, Zeile in MEMORY.md |
| Was für das Projekt gilt (Ablauf, Preise, Grenzen) | `CLAUDE.md` |
| Was über einen Kunden gilt | `kunden/<kunde>/` (ohne Nummern, Passwörter, Buchungsdaten) |
| Was für jeden Kunden taugt | `vorlagen/` oder `werkzeuge/` |
| Was Domi oder ein Kunde gesagt hat | `protokolle/JJJJ-MM-TT-thema.md` |
| Ein fester Ablauf, der zweimal getragen hat | ein Skill unter `.claude/skills/` (Vorlage: `vorlagen/skills-aufbau.md`) |
| Was heute passiert ist, was offen ist | Gedächtnisdatei `stand-aktuell` als Nachtrag mit Datum oben |

Das Gedächtnis liegt auf dem Tower unter
`C:\Users\chris\.claude\projects\C--Christopher-Fromm-Projekte-zeit-sparen\memory\`.
Eine Cloud-Sitzung hat es nicht; dort gehört der Stand in `UEBERGABE.md`.

Gilt ein Learning auch für streckenfliegen (Arbeitsweise, Stimme), dort
ebenfalls eintragen: `C:\Users\chris\.claude\projects\C--Christopher-Fromm-Projekte-streckenfliegen-com\memory\`.
Inhalte dieses Projekts (Kunden, Zahlen, Abmachungen mit Domi) gehen nie dorthin.

## Schluss-Check

Bei «gute Nacht», «ich mache Schluss», «das wars», «bis morgen» vor der
Antwort drei Dinge prüfen, mit Befehlen, nicht aus dem Gedächtnis:

1. **Gelernt.** Den Chat durchgehen (Korrekturen, «merken», «nein», «ja
   genau»). Für jedes Learning prüfen mit `grep -ril <stichwort>`, ob es
   abgelegt ist. Fehlt eines, jetzt ablegen.
2. **Gesichert.** `git status`: Alles, was heute entstanden ist, ist
   committet und auf GitHub (`git push`). Domi und Cloud-Sitzungen sehen nur,
   was gepusht ist. Nichts liegt nur im Chat, im Scratchpad oder in einem
   Helfer-Bericht. Kundendaten vorher mit `git diff --cached` ausschliessen.
3. **Stand.** `stand-aktuell` hat oben einen Nachtrag mit heutigem Datum: was
   passiert ist, was unverschickt liegt, was offen ist, womit der nächste
   Start anfängt. Hat sich am Gesamtbild etwas geändert, `UEBERGABE.md`
   Abschnitt 6 nachführen.

Dann die Antwort an Chris, drei bis fünf Zeilen: was ich mir gemerkt habe,
was gesichert ist (Commit), womit der nächste Start anfängt. Fehlt etwas,
das nur er liefern kann, steht es als letzter Satz.

Vorsicht: Der Hook feuert auch auf Nachrichten von Helfern, wenn dort
«merken» vorkommt. Erst prüfen, ob wirklich Chris sich verabschiedet hat.

## Was kein Learning ist

Abgeschlossene Arbeit als Protokoll. Mein Plan für morgen ohne seine
Zustimmung. Zwischenstände, die in einer Woche niemand mehr braucht.
