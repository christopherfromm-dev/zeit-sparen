# Domis Mac: Einrichtung als laufendes Büro mit Claude

Stand 21.11.2026 (abends, mit Domis Antworten vom 21.11.), für den Termin bei Domi am 22./23.11. («Fall 0»).
Grundlage: der geteilte Ordner «Zeit sparen – Chris & Domi» (Zusammenfassung, Lesefassung, Checkliste Erstgespräch, Tabelle «To-dos, Kunden und Use Cases», Domis Dokument «Automatisierung Limited Strip Events – Ablauf & Plan») und Chris' laufendes System (Tower, NAS, Tailscale, Büro mit Heute-Liste, tägliche Sicherung auf Drive).

---

## 0. Ziel in einem Satz

Domis MacBook Pro läuft durch wie Chris' Tower. Darauf sitzt ein Büro-Ordner mit Claude Code. Domi spricht oder tippt vom Handy aus (Remote Control) und Claude erledigt am Mac: Buchungsliste (Google Tabelle) pflegen, Texte vorbereiten, Mails lesen. WhatsApp sendet Domi immer selbst.

**Weniger ist mehr:** Am 22./23.11. bauen wir das Grundsystem plus **eine** Sache, die trägt (Vorschlag in Abschnitt 6). Domi nutzt sie zwei Wochen und zählt die Minuten.

---

## 1. Was Domi schon hat, was fehlt

| Da (Stand 21.11.) | Fehlt noch / klären |
| :- | :- |
| **MacBook Pro 2018** (Intel) | Schläft mit zugeklapptem Deckel, Akku acht Jahre alt → am Netzteil, Deckel offen, fester Platz (2.2). Höchste unterstützte macOS-Version vor Ort prüfen. Als Dauerläufer eine Übergangslösung; später ein gebrauchter Mac mini |
| **Claude Pro** | Reicht für Claude Code und Remote Control; Limits enger als Max. Ist **Claude Code** installiert oder nur die Desktop-App? |
| NAS eingerichtet | Hersteller/Modell, IP, Freigabename, eigener Benutzer für den Mac |
| Google-Konto | Google Drive für Desktop installiert? |
| Excel-Jahresliste liegt in Google Drive | Es wird eine **neue Tabelle** angelegt, und zwar als **Google Tabelle** (2.8). Die alte Excel in den geteilten Ordner legen, damit die Spalten sichtbar sind |
| E-Mail | Formularanfragen kommen per Mail: an welche Adresse (web.de, eigene Domain)? IMAP-Zugang mit App-Passwort |
| LexOffice | API-Schlüssel (prüfen, ob sein Tarif die öffentliche API enthält) |
| Homepage-Buchungssystem | Welches System steckt hinter Formular und Buchungslink? Gibt es Export, Webhook oder nur Mail? |
| Künstlerliste **gibt es nicht** | Wird das **erste Nebenprodukt** (Abschnitt 4a): eigener Reiter «Künstler» in der Google Tabelle |
| **Textbausteine: vorhanden** | sieben Texte im Wortlaut in [`textbausteine.md`](textbausteine.md). Es fehlen noch Angebotstext, Künstleranfrage, Weiterleitung an den Künstler, Nachinformation bei Änderung, Erstangebot Limousine/Partybus |
| **Sprachnachrichten: vorhanden** | vier Abschriften in [`sprachnachrichten.md`](sprachnachrichten.md), einmal gegen die Aufnahme hören |
| Setcards | 12 Bilder Stripperinnen, 13 Stripper, nur im WhatsApp-Chat → in Drive oder aufs NAS, nie ins Repository |
| Gemini-Verlauf, Handy-Notizen | noch nicht übernommen → Ordner `wissen/` (2.10) |
| Handy | Wechsel Apple → Android geplant. Betrifft iOS-Kurzbefehle; unsere Lösung baut darum auf `wa.me`-Links, die auf beiden laufen |

---

## 2. Mac einrichten, Schritt für Schritt

Zeit: etwa 2 Stunden. Alles im **Terminal** (Programme → Dienstprogramme → Terminal).

> **PowerShell oder Terminal?** Chris' Tower läuft mit Windows und PowerShell. Auf dem Mac ist das Terminal (zsh) der normale Weg; Claude Code arbeitet dort genauso. PowerShell 7 gibt es auch für den Mac (`brew install --cask powershell`), das brauchen wir nur, wenn wir Chris' `.ps1`-Skripte 1:1 übernehmen wollen. Empfehlung: neue Skripte in Python oder zsh, PowerShell weglassen.

### 2.1 Grundwerkzeuge

```bash
xcode-select --install
```

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Danach die zwei Zeilen ausführen, die Homebrew am Ende anzeigt (PATH setzen), dann:

```bash
brew install git gh node python jq
```

```bash
brew install --cask tailscale google-drive
```

### 2.2 Mac läuft durch (wie der Tower)

Systemeinstellungen → Energie (bzw. Batterie → Optionen):
- «Ruhezustand automatisch verhindern, wenn das Display aus ist» an
- «Nach Stromausfall automatisch starten» an
- «Ruhezustand aufheben bei Netzwerkzugriff» an

Oder im Terminal:

```bash
sudo pmset -a sleep 0 disksleep 0 displaysleep 15 autorestart 1 womp 1
```

**Domis MacBook Pro 2018:**
- **Immer am Netzteil, Deckel offen, fester Platz** (gut belüftet, nicht auf dem Sofa). Mit zugeklapptem Deckel schläft er trotz der Einstellungen ein. Der Akku ist acht Jahre alt: Er überbrückt keinen Stromausfall zuverlässig und kann sich aufblähen. Wölbt sich das Gehäuse oder schliesst der Deckel nicht mehr bündig: ausschalten, Akku ersetzen lassen.
- Systemeinstellungen → Batterie → «Batteriezustand optimieren» an lassen, damit der Akku am Netzteil nicht dauernd auf 100 % steht.
- **macOS-Version prüfen:** Apfel-Menü → Über diesen Mac. Das Modell 2018 bekommt macOS 15 Sequoia als letzte grosse Version (vor Ort in Softwareupdate bestätigen). Claude Code und Tailscale laufen darauf. Ist eine ältere Version drauf: vor dem Einrichten aktualisieren, nicht mittendrin.
- Display nach 15 Minuten aus (`displaysleep 15`), der Mac läuft weiter.
- Als Dauerläufer ist das eine **Übergangslösung**. Trägt das System, kommt ein gebrauchter Mac mini an seine Stelle.
- **Automatische Updates:** Systemeinstellungen → Allgemein → Softwareupdate: Sicherheitsupdates ja, macOS-Upgrades von Hand (sonst steht der Mac morgens im Neustart-Dialog).
- **FileVault** an lassen (Kundendaten). Folge: Nach einem Stromausfall muss einmal das Passwort eingegeben werden, bevor der Mac wieder erreichbar ist. Das ist der Preis der Sicherheit; Domi weiss es.
- **Fester Fernzugang (Pflicht, nicht optional):** Bildschirmfreigabe einschalten (Systemeinstellungen → Allgemein → Teilen → Bildschirmfreigabe, nur Domis Benutzer). Erreichbar über Tailscale unter `vnc://<Tailscale-Adresse des Macs>`. Wer kein Mac-Gerät hat (Chris am Windows-Tower): Chrome Remote Desktop auf dem Mac einrichten, das läuft als Dienst nach dem Neustart wieder. Vor Ort einmal von Chris' Laptop aus testen. Ohne diesen Zugang kann niemand helfen, wenn Remote Control hängt.

### 2.3 Claude Code installieren und anmelden

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

```bash
mkdir -p ~/buero && cd ~/buero && claude
```

Beim ersten Start mit Domis Claude-Konto anmelden. Testen: «Wer bist du und in welchem Ordner bist du?»

### 2.4 Remote Control: vom Handy auf den Mac

1. Im Büro-Ordner starten:

   ```bash
   cd ~/buero && claude remote-control
   ```

   (Alternativ in der Claude-Desktop-App: Einstellungen → Claude Code → Remote Control, Ordner `~/buero` freigeben.)
2. Auf dem Handy: Claude-App → Code → die Sitzung vom Mac auswählen. Test vom Handy: «Liste die Dateien im Büro-Ordner.»
3. **Autostart (Pflicht):** Damit Remote Control nach einem Neustart wieder da ist, als LaunchAgent einrichten. Vor Ort mit `claude remote-control --help` prüfen, welche Optionen die installierte Version hat, dann mit Claude zusammen den LaunchAgent schreiben (`~/Library/LaunchAgents/ch.buero.remote.plist`, `RunAtLoad` und `KeepAlive` an). Damit der Mac nach dem Neustart ohne Passwort bis zum Schreibtisch kommt, braucht es die automatische Anmeldung, und die geht mit FileVault nicht (siehe 2.2). Darum gilt: Nach Stromausfall oder Update tippt Domi einmal sein Passwort ein, danach startet Remote Control von selbst.
4. **Neustart-Test (Pflicht):** Mac neu starten, Passwort eingeben, Hände weg. Nach zwei Minuten vom Handy: «Liste die Dateien im Büro-Ordner.» Erst wenn das klappt, ist der Punkt erledigt.

### 2.5 Tailscale (Mac, NAS, Handy in einem Netz)

- Tailscale-App auf dem Mac öffnen, mit Domis Konto anmelden.
- Tailscale auf dem NAS (Synology/QNAP haben ein Paket) und auf dem Handy.
- Prüfen: Alle Geräte grün in der Tailscale-Übersicht (bei Chris war das Problem «expired»: Schlüsselablauf für Mac und NAS in der Admin-Konsole deaktivieren).

### 2.6 NAS einbinden

- Finder → Gehe zu → Mit Server verbinden → `smb://<NAS-Name>/<Freigabe>`, Passwort im Schlüsselbund sichern.
- Systemeinstellungen → Allgemein → Anmeldeobjekte: die Freigabe hinzufügen, damit sie nach Neustart wieder da ist.
- **Time Machine** auf das NAS einrichten (eigene Freigabe, Grössenlimit setzen).

### 2.7 Google Drive für Desktop

Anmelden, «Dateien streamen». Der Ordner liegt danach unter `~/Library/CloudStorage/GoogleDrive-…/Meine Ablage`. Dort einen Ordner `buero-sicherung` anlegen (wie Chris' `buero-JJJJ-MM-TT.zip`).

### 2.8 Buchungsliste als Google Tabelle

Die neue Buchungsliste wird eine **Google Tabelle** im geteilten Drive-Ordner, keine Excel-Datei. Gründe: Claude schreibt über den Konnektor «Google Sheets», es gibt keinen Konflikt mit einer geöffneten Datei, Domi sieht die Liste am Handy in der Sheets-App, die Tabelle hat einen eigenen Versionsverlauf, und als Excel exportieren geht jederzeit (Datei → Herunterladen → Microsoft Excel).

- Anlegen in Drive: «Buchungen Limited Strip Events 2026/27», Reiter **«Buchungen»** (eine Zeile pro Buchung) und **«Künstler»** (Abschnitt 4a).
- Spalten mit Domi vor Ort festlegen, von seiner alten Excel ausgehen. Dazu kommen immer: «Status», «Daten an Künstler gesendet», «Änderung nachinformiert», «Geändert am».
- Datum als echtes Datum, Uhrzeit als Uhrzeit, keine zusammengefassten Zellen.
- Kein `openpyxl`, kein Excel für Mac nötig.

Für den Mailzugang (W1, später):

```bash
cd ~/buero && python3 -m venv .venv && .venv/bin/pip install imapclient
```

### 2.9 Konnektoren (claude.ai → Einstellungen → Konnektoren)

| Konnektor | Wofür | Muss? |
| :- | :- | :- |
| Google Drive | geteilter Ordner «Zeit sparen», Sicherungen, Dokumente | ja |
| Google Kalender | Wochenend-Übersicht, Termine der Shows | ja |
| Google Sheets | Buchungsliste und Künstlerliste lesen und schreiben (2.8) | **ja** |
| Gmail | nur wenn Anfragen dort ankommen. **web.de geht damit nicht**, siehe Werkzeug W1 | je nach Mail |
| Microsoft 365 | nicht nötig, die Liste ist eine Google Tabelle | nein |
| LexOffice | gibt es nicht als Konnektor; wird ein eigenes Werkzeug über die API (W6) | bauen |
| WhatsApp | **bewusst nicht** (Meta verbietet Erwachsenenunterhaltung, Sperrgefahr). Nur vorbereitete Texte + `wa.me`-Link | nie |

In Claude Code mit `/mcp` prüfen, welche Konnektoren dort ankommen.

### 2.10 Büro-Ordner und Grundregeln

```
~/buero/
  CLAUDE.md              ← Regeln und Wissen über die Agentur
  .claude/skills/        ← ein Ordner pro Ablauf (siehe Abschnitt 4)
  daten/                 ← Link zur Google Tabelle, Preise (keine Nummern)
  texte/                 ← Textbausteine aus den iPhone-Notizen
  wissen/                ← Rohmaterial: Gemini-Verlauf, Handy-Notizen
  skripte/               ← Python-Helfer (Mail, LexOffice)
  sicherung/             ← alter Wert jeder geänderten Zelle (Protokoll)
  heute.md               ← Tagesübersicht (wie Chris' Heute.txt)
```

**`wissen/`** ist Rohmaterial, nicht das System. Dorthin kommen der Gemini-Verlauf und die Handy-Notizen, so wie sie sind. Gemini vorher selbst zusammenfassen lassen: «Fass alles zur Agentur und zur Automatisierung zusammen.» In `CLAUDE.md` und die Skills wandert daraus nur, was feststeht: Textbausteine, Pflichtdaten, Preislogik. Claude liest `wissen/` bei Bedarf, richtet sich aber nach `CLAUDE.md`.

Vorlagen für Heute-Liste, Posteingang, Sicherung und Skills liegen im Repository unter `vorlagen/`.

Inhalt `CLAUDE.md` (Entwurf, mit Domi vor Ort anpassen):

```markdown
# Büro Limited Strip Events

Du arbeitest für Dominic (Domi), Agentur limited-strip-events.de: Vermittlung von
Künstlern, Shows, Partybussen und Stretchlimousinen in DE, AT, CH. Duzen, kurz, locker.

## Feste Regeln
- WhatsApp nie selbst senden. Immer: fertiger Text + wa.me-Link, Domi tippt und sendet.
- Die Buchungsliste ist die Google Tabelle «Buchungen Limited Strip Events» (Link in
  daten/tabelle.md). Lesen und schreiben über den Konnektor Google Sheets.
- Vor jeder Änderung den alten Wert mit Datum, Uhrzeit, Zeile und Spalte in
  sicherung/aenderungen.md festhalten. Nie Zeilen löschen.
- Geänderte Felder rot markieren, «Geändert am» setzen; «Änderung nachinformiert»
  auf «nein», wenn «Daten an Künstler gesendet» = ja.
- Künstler stehen im Reiter «Künstler». Nummern nur dort, nie in Dateien dieses Ordners.
- wissen/ ist Rohmaterial. Was dort steht, gilt erst, wenn es hier steht.
- Rechnungen in LexOffice nur als Entwurf anlegen, nie selbst abschliessen oder versenden.
- Pflichtdaten jeder Anfrage: Ort + PLZ, Leistung, Datum, Uhrzeit.
  Limousine/Partybus zusätzlich: Abholort, Mietdauer, Zielort. Fehlt etwas: nachfragen.
- Kundendaten bleiben auf diesem Mac und im NAS. Nichts in fremde Dienste kopieren.
```

### 2.11 Tägliche Sicherung (wie bei Chris)

Ein LaunchAgent, der jede Nacht `~/buero` (ohne `.venv` und Schlüssel) als `buero-JJJJ-MM-TT.zip` nach Google Drive `buero-sicherung` legt und Zips älter als 30 Tage löscht. Die Google Tabelle hat ihren eigenen Versionsverlauf; einmal pro Woche zusätzlich als Excel-Export ins Zip. Vor Ort mit Claude schreiben lassen, einmal von Hand auslösen, Dateien nachzählen. Vorlage mit den Fallen aus Chris' Büro: `vorlagen/taegliche-sicherung.md`.

---

## 3. Was wir übernehmen können (schon gebaut)

| Bei Chris / im Ordner | Für Domi | Anpassung |
| :- | :- | :- |
| **Büro für streckenfliegen.com** (Posteingang: gleiche Anfragen beantwortet, Rest sortiert, «Heute»-Liste mit «wartet auf dich seit X Tagen») | Formular-Mails einlesen, offene Anfragen und offene Künstlerzusagen täglich in `heute.md` | Mailzugang über IMAP statt Gmail (falls web.de); Liste aufs Handy per Remote Control |
| **Buchungen streckenfliegen** (Google-Tabelle «Anfragen»: Eingang, Art, Status, Kontaktdaten, Notiz) | Spaltenvorbild für die neue Google Tabelle: Status je Buchung (angefragt → bestätigt → gebucht → Künstler fix → Rechnung → erledigt) | Domis Spalten behalten, nur Status- und Kontrollspalten ergänzen |
| **Camp-Buchung aus einem Formular** | Pflichtdaten-Prüfung, «Daten einmal erfassen» | Formularfelder von Domis Homepage |
| **Diktat → Bericht** (Alina) | «Änderung per Zuruf»: Domi spricht, Claude trägt ein | gleiche Idee, Ziel ist eine Tabellenzeile statt ein Bericht |
| **Frederik / reden statt tippen** | Domi diktiert im Auto ins Handy, Remote Control führt aus | nichts zu bauen, nur zeigen |
| **Heute.txt** («Nur zum Nachschlagen») | Wochenend-Übersicht: wer ist wann wo, wer hat die Daten noch nicht | aus der Google Tabelle statt aus Mails |
| **Tower + NAS + Tailscale** | gleiches Grundgerüst auf dem Mac | macOS statt Windows (Abschnitt 2) |
| **Tägliche Büro-Sicherung auf Drive** | gleich | LaunchAgent statt Windows-Aufgabe |
| **Anleitung für Lisa** (Schritt-für-Schritt, «bei Fehler Handyfoto an Chris») | Format dieser Datei und künftiger Anleitungen für Domi | — |
| **Tandem: Download-Link vom NAS** (Idee) | später, nach der Agentur | NAS-Freigabelink mit Ablauf 1 Monat |

---

## 4. Was wir noch bauen müssen

Reihenfolge nach Hebel. Jedes Werkzeug ist ein Skill im Büro-Ordner (`.claude/skills/<name>/SKILL.md`) plus, wo nötig, ein kleines Python-Skript.

| # | Werkzeug | Was es tut | Braucht | Aufwand |
| :- | :- | :- | :- | :- |
| W5 | **Änderung per Zuruf** | «Show am 29.11. in Kempten: neue Adresse …» → Zeile in der Google Tabelle finden, alten Wert festhalten, Feld ändern, rot markieren, «nachinformieren» setzen, fertigen WhatsApp-Text an den Künstler + `wa.me`-Link zurück aufs Handy | Google Tabelle mit Spalten, Konnektor Google Sheets, Text «Nachinformation bei Änderung» | **klein: Fall 0** |
| W1 | **Anfrage-Leser** | Formular-Mail lesen → Pflichtdaten prüfen → neue Zeile in der Google Tabelle → Bestätigungstext («Ist das deine Anfrage?») + `wa.me`-Link | Mailzugang (IMAP, App-Passwort), Beispiel-Formularmails | mittel |
| W2 | **Angebot** | Textbaustein mit Ablauf, Preis, Buchungslink; passende Setcards nach Ort/Datum vorschlagen | Textbausteine, Preisliste, Künstlerliste | mittel |
| W3 | **Künstler anfragen** | aus der Buchung «Hast du Zeit am …, um …, in …? Gage: …» für alle passenden Künstler der Region, je mit `wa.me`-Link | **Künstlerliste** (Region, Leistung, Gage, Nummer) | klein, wenn Liste da |
| W4 | **Buchung an Künstler** | nach Zusage Buchungsmail an den Künstler als Entwurf (oder senden nach Domis «ok»), Spalte «Daten gesendet» = ja | Mail-Versand (SMTP) oder Entwurf | klein |
| W6 | **Anzahlungsrechnung** | aus der Buchung einen Rechnungsentwurf in LexOffice anlegen, Domi prüft und sendet | LexOffice-API-Schlüssel, Kunde/Artikel in LexOffice | mittel |
| W7 | **Übersichten** | Freitag: Wochenend-Übersicht; Monatsende: verkaufte Shows; täglich: wer hat Daten noch nicht, wer muss nachinformiert werden | Google Tabelle mit sauberen Spalten | klein |
| W8 | **Tandem-Fotos per Link** | Ordner pro Gast auf dem NAS, Freigabelink 1 Monat, Text an den Gast | NAS-Freigabelinks | später |

### 4a. Erstes Nebenprodukt: die Künstlerliste

Eine Künstlerliste gibt es nicht. Ohne sie gehen W2 und W3 nicht. Sie entsteht nebenbei, nicht als eigenes Projekt:

- Eigener Reiter **«Künstler»** in der Google Tabelle: Name (wie auf der Setcard), Leistung (Stripper, Stripperin, Fahrer, Show), Region, Gage, WhatsApp-Nummer, Notiz.
- **Namen und Leistungen** liest Claude aus den Setcards auf Domis Homepage vor. **Region, Gage und Nummer** diktiert Domi, am besten im Auto per Handy («<Name>, Region Kempten, Gage …, Nummer …»).
- Nummern stehen **nur in der Tabelle**, nie im Repository und nie in Dateien im Büro-Ordner.
- Am Wochenende reicht ein Anfang mit den Künstlern, die in den Testfällen für W5 vorkommen. Den Rest füllt Domi in den zwei Wochen danach.

Bewusst **nicht** automatisiert:
- WhatsApp-Versand (Sperrgefahr, siehe Meta-Richtlinien). `wa.me/<Nummer>?text=<Text>` öffnet den Chat mit fertigem Text auf iPhone und Android; Domi tippt «Senden».
- Die vier Sprachnachrichten: bleiben als Dateien auf dem Handy, Domi leitet weiter. Persönlich wirken ist hier der Punkt.
- Preis: Claude schlägt vor, Domi entscheidet (er passt jedes Mal leicht an).

---

## 5. Ablauf heute → mit dem System

| Schritt | Heute | Mit dem System |
| :- | :- | :- |
| 1 Anfrage | Mail / WhatsApp / Anruf | Mail: W1 legt die Zeile in der Google Tabelle an. WhatsApp/Anruf: Domi leitet die Daten an Claude weiter («neue Anfrage: …») |
| 2 Pflichtdaten | im Kopf | W1 prüft, nennt was fehlt |
| 3 Kunde bestätigen | Notiz kopieren + Screenshot | fertiger Text + `wa.me`-Link |
| 4 Angebot | Notiz + Setcards + Sprachnachricht | W2: Text mit Preis + Setcard-Vorschlag; Sprachnachricht wie bisher |
| 5 Kunde bucht | Homepage | unverändert, Bestätigungsmail → Status «gebucht» |
| 6 Künstler anfragen | WhatsApp von Hand | W3: Texte für alle passenden Künstler |
| 7 Künstler sagt zu | Mail weiterleiten | W4: Entwurf, Spalte «gesendet» |
| 8 Rechnung | LexOffice von Hand | W6: Entwurf in LexOffice |
| 9 Liste pflegen | Excel von Hand | Google Tabelle, passiert bei 1–8 mit; Änderungen über W5 |

---

## 6. Plan für den 22./23.11.

**Tag 1 (Samstag)**
1. Zuschauen, nicht bauen: Domi macht eine echte Anfrage bis zur Rechnung. Chris notiert, was er tippt, sucht, kopiert, und die Minuten.
2. Alte Excel anschauen: welche Spalten, wie viele Zeilen pro Jahr, wie oft Änderungen. Daraus die neue Google Tabelle anlegen (2.8) mit «Daten an Künstler gesendet», «Änderung nachinformiert», «Geändert am» und dem Reiter «Künstler» (4a).
3. Mac einrichten (Abschnitt 2.1–2.7): Netzteil, Deckel offen, fester Platz; Remote Control vom Handy testen; fester Fernzugang testen.

**Tag 2 (Sonntag)**
4. **Fall 0 bauen: W5 «Änderung per Zuruf»** (max. 3 Std.). Warum dieses: Domi wünscht es sich ausdrücklich, es braucht keine Passwörter und keine API, und es zeigt das ganze System auf einmal (Handy → Mac → Google Tabelle → fertiger WhatsApp-Text).
5. Mit drei echten Änderungen der letzten Wochen testen.
6. Erst nach Domis Ja: Sicherung (2.11) einrichten, Remote Control als Autostart, **Neustart-Test** (2.4), fester Fernzugang (2.2) von Chris' Laptop aus testen.
7. Messen festlegen: Minuten pro Änderung vorher (schätzen + einmal stoppen) und nachher. Domi zählt zwei Wochen mit. Nachschau Anfang Dezember.
8. Daten einsammeln für die nächsten Werkzeuge: Künstlerliste weiterfüllen (4a), Gemini-Zusammenfassung und Handy-Notizen nach `wissen/`, Beispiel-Formularmails, LexOffice-Schlüssel.

---

## 7. Offene To-dos

### Für den Termin (neu)

- [x] Domi: Mac-Modell (MacBook Pro 2018), Claude-Plan (Pro) geschickt, 21.11.
- [ ] Domi: NAS-Modell
- [ ] Domi: alte Excel-Jahresliste in den geteilten Drive-Ordner legen (Spalten ansehen); neue Liste wird eine Google Tabelle
- [x] Domi: Textbausteine und Sprachnachrichten geschickt, 21.11. (`textbausteine.md`, `sprachnachrichten.md`)
- [x] Künstlerliste: gibt es nicht → erstes Nebenprodukt (4a)
- [ ] Domi: Gemini-Verlauf zusammenfassen lassen, Handy-Notizen exportieren → `wissen/`
- [ ] Domi: Setcard-Bilder in Drive oder aufs NAS
- [ ] Domi: Zugang zum Mailpostfach, in dem die Formularanfragen landen (App-Passwort)
- [ ] Domi: LexOffice-Login; prüfen, ob die API im Tarif ist
- [ ] Klären: Welches System steckt hinter Formular und Buchung auf der Homepage? (Domi baut gerade eine neue Homepage: jetzt mitdenken, damit das Formular strukturierte Daten liefert)
- [ ] Klären: Wechsel zu Android – wann? (betrifft nur Kurzbefehle, nicht `wa.me`)
- [ ] Klären: Schweiz-Umzug → LexOffice behalten oder Schweizer Buchhaltung? (W6 erst danach gross bauen)
- [ ] Datenschutz: Kundendaten nur auf Mac/NAS; in Claude die Einstellung zur Datennutzung fürs Training prüfen

### Aus der Tabelle «To-dos, Kunden und Use Cases» (Stand dort)

| Prio | Aufgabe | Wer | Bis | Stand |
| :- | :- | :- | :- | :- |
| 1 | Fall 0 bei Domi, 22./23.11., eine Sache bauen, zwei Wochen messen | Chris | 23.11. | geplant |
| 1 | Aufzug-Satz 30/60 Sek. schreiben, üben | Chris | 08.11. | **überfällig** |
| 1 | Antwort auf «Was kostet das?» | beide | 15.11. | **überfällig** |
| 1 | Stunden pro Woche bis Januar: Zahl nennen | beide | 08.11. | **überfällig** |
| 2 | Messen festlegen: Minuten vorher/nachher, Ziel 20 Fälle | beide | 15.11. | **überfällig** – am Wochenende mit Fall 0 erledigen |
| 2 | Alina messen | Chris | 15.11. | **überfällig** |
| 2 | Autohändler fragen (gratis gegen Zahlen + Empfehlung) | Domi | 15.11. | **überfällig** |
| 2 | Buddy-Tag 10.11. | Chris | 10.11. | steht noch auf «offen» – Stand nachtragen |
| 2 | Tiefgarage anrufen | Domi | 30.11. | wartet auf Aufzug-Satz + Preis |
| 2 | Use Cases sammeln, Zeit-Klagen notieren | beide | laufend | offen |
| 3 | «Ich überlege es mir»-Antwort, online/vor Ort, Januar bauen | beide | Januar | offen |

Hinweis: Der Ordner «Recherchen» ist leer, und die Tabelle wurde seit dem 30.10. nicht mehr aktualisiert.

---

## 8. Was sonst noch fehlt (Chris' Einschätzung)

1. **Künstlerliste** ist der eigentliche Engpass: Ohne sie gehen W2 und W3 nicht. Sie gibt es nicht (21.11.), darum entsteht sie als erstes Nebenprodukt (4a).
2. **Saubere Spalten in der Google Tabelle**: Datum als echtes Datum, eine Zeile = eine Buchung, Status-Spalte. Je sauberer, desto sicherer schreibt Claude hinein.
3. **Google Tabelle statt Excel** (entschieden 21.11.): kein Konflikt mit einer geöffneten Datei, am Handy sichtbar, Export als Excel jederzeit.
4. **USV (Notstrom) für Mac und NAS**: klein, günstig, verhindert kaputte Dateien bei Stromausfall. Beim MacBook 2018 wichtiger als sonst, weil der alte Akku nicht mehr zuverlässig überbrückt.
5. **Fester Fernzugang** (Pflicht, 2.2): Bildschirmfreigabe über Tailscale oder Chrome Remote Desktop, falls Remote Control hängt.
6. **Neue Homepage**: Jetzt ist der beste Moment, das Formular so zu bauen, dass es strukturierte Daten liefert (feste Felder, evtl. Kopie an eine eigene Anfrage-Adresse).
7. **Grenze klar halten**: Claude bereitet vor, Domi sendet. Das gilt für WhatsApp, Rechnungen und Preise.
