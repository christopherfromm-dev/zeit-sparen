---
name: morgen
description: Der Start in eine Sitzung im Projekt «Zeit sparen» mit Domi. GitHub abgleichen, Stand holen, was seit dem letzten Mal passiert ist (andere Sitzungen, Domi, Drive-Ordner), dann ein erster Schritt und eine Frage. Laden bei «guten Morgen», «los gehts», «go» und bei der ersten Nachricht nach mehr als acht Stunden Pause (Hook morgen-erinnerung.sh). Nicht laden, wenn Chris «kein Morgenlauf» sagt.
---

# Morgen (Zeit sparen)

Der Durchlauf liest und ordnet, er handelt nicht. Kein WhatsApp, keine Mail,
keine Änderung an Domis Tabellen. Sagt Chris «kein Morgenlauf», entfällt er.

## Die Reihenfolge

1. **GitHub.** `git pull --ff-only`. Cloud-Sitzungen und später Domi schreiben
   ins selbe Repository. Was neu kam: `git log --oneline HEAD@{1}..HEAD`
   (leer = nichts Neues). Geht der Pull nicht glatt: nichts erzwingen, Chris
   sagen, was sich widerspricht.
2. **Stand.** Gedächtnisdatei `stand-aktuell`: neuester Nachtrag und der Plan
   «beim nächsten Start zuerst». Dazu `UEBERGABE.md` Abschnitt 6 (was fehlt)
   und die offenen Haken in `kunden/*/`.
3. **Domi.** Hat er in WhatsApp geschrieben, seit `stand-aktuell` zuletzt
   nachgeführt wurde? Nur lesen, nie tippen. Wie: streckenfliegen-Gedächtnis
   `whatsapp-web-lesen`. Eine offene Frage von ihm kommt zuerst (Regel
   `partnerfragen-nie-liegen-lassen`). Sprachnachrichten: Skill
   `chat-auswerten` im streckenfliegen-Ordner.
4. **Drive-Ordner «Zeit sparen – Chris & Domi».** Was ist neu oder geändert
   (Drive-Connector, per ToolSearch laden)? In der Tabelle «To-dos, Kunden
   und Use Cases» die überfälligen Zeilen. Nur lesen.
5. **Kalender heute**, wenn der Connector da ist: Termine mit Domi oder Kunden.

## Die Antwort

- Stand in drei Zeilen, das Wichtigste und Dringendste zuerst.
- **Der erste Schritt heute**, fett, mit dem Grund.
- **Eine Frage**, die den Schritt entscheidet. Keine zweite.

Rückfragen als Fliesstext. Was seit mehr als zwei Wochen offen liegt, kommt
mit einer Empfehlung: machen, verschieben oder streichen.

## Grenzen

- Nichts geht raus: keine Mail, kein WhatsApp, keine Rechnung (CLAUDE.md).
- Kundendaten (Nummern, Buchungen, Passwörter) nie ins Repository.
- Nichts aus streckenfliegen hierher, nichts von hier dorthin.
