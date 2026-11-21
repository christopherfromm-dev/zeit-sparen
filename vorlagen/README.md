# Vorlagen aus Chris' Büro

Übernommen am 21.11.2026 vom Tower aus dem Büro von streckenfliegen.com (`streckenfliegen/buero/`, `scripts/`, `.claude/skills/`). Das Büro läuft dort seit August 2026 täglich. Hier liegt, was davon für jeden Kunden taugt.

**Was weggelassen ist:** alle Kundennamen und Fälle aus den Code-Kommentaren, Mailadressen, IP-Adressen, Rechner- und Benutzernamen, Pfade auf Chris' Laufwerke, die `.env`. Wo ein Fall eine Regel erklärt, steht er ohne Namen da («eine Kundin stand 38 Tage auf …»).

**Was nicht 1:1 kopiert ist:** der Code selbst (`heute.ts`, `postfach.ts`, `sicherung.ts`). Er hängt an Chris' Datenordner, an Astro und an seinen Kontaktdateien und hat Kundennamen in den Kommentaren. Übernommen sind Aufbau, Regeln und die Fallen, die er schon gekostet hat. Beim Kunden baut Claude das Werkzeug neu, passend zu dessen Daten (bei Domi: Google Tabelle statt Kontaktordner).

| Vorlage | Inhalt | Vorbild im Büro |
| :- | :- | :- |
| [heute-liste.md](heute-liste.md) | Tagesübersicht: wer wartet, was fällig ist, wo Geld hängt | `buero/werkzeuge/heute.ts`, Seite «Heute», `Heute.txt` |
| [posteingang-ablauf.md](posteingang-ablauf.md) | Mails holen, beim richtigen Fall ablegen, Entwurf → gesendet | `buero/werkzeuge/postfach.ts`, `postfach-holen.ts` |
| [taegliche-sicherung.md](taegliche-sicherung.md) | Zip nach Drive (30 Tage) und Spiegel aufs NAS | `buero/werkzeuge/sicherung.ts`, `scripts/sicherung-nas.ps1` |
| [sicherungsskripte/](sicherungsskripte/) | die zwei Windows-Skripte mit Platzhaltern | `scripts/sicherung-nas.ps1`, `scripts/sicherung-zeitplan-anlegen.ps1` |
| [skills-aufbau.md](skills-aufbau.md) | wie Skills angelegt werden: Ordner, SKILL.md, learnings.md, README | `.claude/skills/` |
| [skills/](skills/) | leere Vorlagen zum Kopieren | `.claude/skills/README.md`, `artikel/SKILL.md`, `artikel/learnings.md` |

Alles hier ist ungetestet beim Kunden. Was auf dem Mac anders läuft, steht in jeder Vorlage unter «Beim Kunden».
