# Vorlage: Posteingang-Ablauf

Vorbild: «Postfach holen» im Büro von streckenfliegen.com (`buero/werkzeuge/postfach.ts`, `postfach-holen.ts`). Im Einsatz seit August 2026, liest per IMAP (Bibliothek `imapflow`).

## Der Ablauf

1. **Holen.** Mails der letzten Tage (Standard 12, von Hand bis 30) aus allen Ordnern lesen, auch «Gesendet». Holen schreibt nichts und löscht nie etwas im Postfach.
2. **Zuordnen.** Jede Mail zum Menschen (bzw. zur Buchung), zu dem sie gehört. Unbekannte Absender erscheinen als Vorschlag «neuer Absender», ein Klick macht einen Kontakt daraus.
3. **Ablegen.** Pro Kontakt ein Verlauf, pro Monat eine Datei (`nachrichten/<kennung>/<JJJJ-MM>.md`). Ein Block pro Nachricht:

   ```
   ## 2026-11-21 · mail · rein

   **Betreff**

   Anhang: rechnung.pdf

   Text der Mail …
   ```

   `rein`, `raus`, `entwurf`, `verworfen`. Der Anhang steht in einer eigenen Zeile, damit man später sieht, dass die Rechnung mitging.
4. **Entwurf → gesendet nachziehen.** Kommt derselbe Wortlaut aus «Gesendet» zurück, wird aus dem Entwurf die verschickte Mail, mit Datum, Betreff und Text, **wie sie rausging**.
5. **Melden.** Wer jetzt wartet, geht in die Heute-Liste (siehe [heute-liste.md](heute-liste.md)). Läuft das Büro, holt es alle zehn Minuten und meldet neue Mails mit dem Namen des Absenders.

## Regeln

- **Zugangsdaten nie im Code.** Sie stehen in einer `.env` (oder im Schlüsselbund), die nie ins Repository und nie in die Sicherung geht.
- **Claude sendet nichts.** Es legt Entwürfe an. Der Mensch sendet selbst.
- **Eine Person ist eine Person.** Steht sie schon da, nur ohne Mailadresse, wird die Adresse nachgetragen statt eine zweite Karte angelegt.

## Fallen, die schon Zeit gekostet haben

| Falle | Was passiert ist | Regel |
| :- | :- | :- |
| Nur Posteingang und Gesendet gelesen | Chris schiebt Mails von Hand in Ordner; 103 Punkte standen offen, viele längst erledigt | Alle Ordner lesen; Ordner mit «erledigt», «gestellt», «gelesen», «archiv» heissen: wartet nicht mehr |
| Doppelte über Betreff und Datum erkannt | Zweite Mail mit gleichem Betreff am selben Tag fiel still weg | Doppelt ist, was mit demselben Textanfang (200 Zeichen, ohne Umbrüche) schon dasteht |
| Entwurf blieb Entwurf | Im Mailprogramm abgeschickt, das Büro erfuhr es nie, erledigte Zusagen standen offen | Gesendet-Ordner abgleichen und Entwurf nachziehen |
| Nur die Kopfzeile umgeschrieben | Im Verlauf stand mein Text, nicht die zwei Sätze, die Chris geändert hatte | Text und Betreff aus dem Postfach übernehmen, «Re:» inklusive |
| Formular-Mails mit gleichem Anzeigenamen | Zwanzig Kontakte hätten gleich geheissen | Bei Weiterleitern und Formularen zählt die Antwortadresse bzw. der Name im Text |
| Verbindung bricht ab | Fehler kommt als Ereignis, nicht als Ausnahme | Ereignis abfangen, sonst stürzt der Lauf ab |

## Beim Kunden

- **Bei Domi:** Formularanfragen kommen per Mail. Anbieter klären (web.de, eigene Domain), IMAP einschalten, App-Passwort. Gmail-Konnektor nur, wenn die Mails in Gmail ankommen.
- Statt Kontaktordner: Die Formular-Mail wird zur Zeile in der Google Tabelle (W1 «Anfrage-Leser»), mit Pflichtdaten-Prüfung und fertigem Bestätigungstext plus `wa.me`-Link. WhatsApp sendet Domi.
- Zuerst 3–5 echte Formularmails als Beispiele sammeln, dann bauen.
