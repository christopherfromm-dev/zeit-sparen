# Übergabe: Stand Zeit sparen, 21.11.2026

Alles, was in der Cloud-Sitzung vom 21.11.2026 erarbeitet wurde, und alles, was noch fehlt. Geschrieben für eine neue Claude-Sitzung (z. B. auf dem Tower) und für Chris und Domi zum Nachlesen. Wer nur diese Datei liest, soll weiterarbeiten können.

---

## 1. Worum es geht

**Projekt «Zeit sparen»** von Chris und Domi: Selbständigen Zeit zurückgeben, indem wir ihre Abläufe ansehen, das Problem finden, das am meisten Zeit kostet, und ein Werkzeug dafür bauen. Getrennt von streckenfliegen.com.

**Fall 0 ist Domi selbst**, mit seiner Agentur Limited Strip Events (Vermittlung von Strippern, Stripperinnen, Shows, Partybussen, Stretchlimousinen in DE/AT/CH). Termin: **22./23.11.2026 bei Domi im Allgäu**.

**Zwei Ziele für das Wochenende:**
1. Den Ablauf mit einem Kunden an Domi üben: Anamnese → Befund → kleinste Lösung → Testcase → seine Entscheidung → erst dann das ganze System.
2. Domis Mac so einrichten, dass er wie Chris' Tower durchläuft und Domi vom Handy aus (Remote Control) mit Claude arbeiten kann.

---

## 2. Was es schon gibt

### In diesem Repository (`christopherfromm-dev/zeit-sparen`, privat, Branch `main`)

| Datei | Inhalt | Stand |
| :- | :- | :- |
| `README.md` | Aufbau des Repositories, wo was liegt | fertig |
| `CLAUDE.md` | Projektregeln (Trennung, keine Kundendaten, Ablauf, Schweizer Schreibweise) | fertig |
| `kunden/domi-agentur/mac-einrichtung.md` | Mac Schritt für Schritt, Konnektoren, Werkzeuge W1–W8, Plan fürs Wochenende, To-dos | nachgeführt am 21.11. (Tower), siehe 6.1 |
| `kunden/domi-agentur/gespraechsvorbereitung-fall-0.md` | Leitfaden fürs Gespräch mit Domi inkl. Fragen, Minuten-Tabelle, Einwände, Spickzettel | fertig |
| `kunden/domi-agentur/textbausteine.md` | Domis sieben Copy-Paste-Texte im Wortlaut + Beobachtungen | fertig |
| `kunden/domi-agentur/sprachnachrichten.md` | Abschriften der vier Sprachnachrichten + feste Fakten als Tabelle | fertig, einmal gegenhören |
| `vorlagen/` | Heute-Liste, Posteingang, Sicherung, Skills aus Chris' Büro, ohne Kundendaten | 21.11. (Tower) |
| `werkzeuge/`, `protokolle/` | leer | offen |
| `UEBERGABE.md` | diese Datei | — |

### In Google Drive, Ordner «Zeit sparen – Chris & Domi» (geteilt mit Domi)

| Datei | Inhalt |
| :- | :- |
| Zusammenfassung: Zeit sparen, Gespräch Oktober 2026 | Produkt, Zielgruppe, Ablauf aus der Physiotherapie, Preisfrage, Werte, Aufgabenverteilung |
| Protokolle / Gespräch Chris und Domi, Lesefassung | das Gespräch in Reihenfolge |
| Checkliste Erstgespräch | Vorher, Anamnese, Befund, kleinste Lösung, Präsentieren, Abschluss, Nachher |
| To-dos, Kunden und Use Cases (Tabelle, 3 Reiter) | laufende Liste; **seit 30.10. nicht aktualisiert** |
| Automatisierung Limited Strip Events – Ablauf & Plan (von Domi, 20.11.) | sein Ablauf in 9 Schritten, Excel-Wunsch, Automatisierungsvorschlag, WhatsApp-Risiko |
| Recherchen | leer |

### Bei Chris (nur auf Tower/NAS, von der Cloud nicht erreichbar)

Büro für streckenfliegen.com (Posteingang, Heute-Liste, Skills), tägliche Sicherung `buero-JJJJ-MM-TT.zip` nach Drive, NAS, Tailscale, Kunstprojekt, SAV-Wettkampf-Ordner. Auf GitHub liegen nur `streckenfliegen`, `gleitschirm-buch` und jetzt `zeit-sparen`.

---

## 3. Was wir über Domi und seine Agentur wissen

### Ablauf heute (aus seinem Dokument)

1. Anfrage kommt per Formular (Mail, am häufigsten), WhatsApp-Button oder Anruf. Alles landet in WhatsApp.
2. Pflichtdaten prüfen: Ort + PLZ, Leistung, Datum, Uhrzeit; bei Limousine/Partybus zusätzlich Abholort, Mietdauer, Zielort.
3. Bei Formularanfragen: Kunde per WhatsApp bestätigen lassen (Schutz vor Zahlendrehern).
4. Angebot: Setcards + Text mit Preis + Buchungslink + vorgefertigte Sprachnachricht (4 Varianten).
5. Kunde bucht über die Homepage; Homepage schickt Bestätigung und Mail mit Buchungsdaten.
6. Künstler regional per WhatsApp anfragen (Datum, Uhrzeit, Ort, Gage).
7. Künstler sagt zu → Buchung per Mail weiterleiten.
8. Anzahlungsrechnung (Provision) in LexOffice, Vorkasse; Rest bar vor Ort an den Künstler.
9. Excel-Jahresliste pflegen (eine Zeile pro Buchung; Wochenend-Übersicht, Monatsabschluss, Kontrolle).

**Sein ausdrücklicher Wunsch:** Änderungen (Adresse, Uhrzeit, Künstler, Outfit) per Zuruf an Claude; geänderte Felder rot; sichtbar, ob der Künstler nachinformiert werden muss.

**Werkzeuge heute:** WhatsApp Business (iPhone), iPhone-Notizen, E-Mail, Homepage-Buchungssystem, LexOffice, Excel.

### Antworten vom 21.11. (im Gespräch geklärt)

| Frage | Antwort |
| :- | :- |
| Claude-Plan | **Pro** (reicht für Claude Code und Remote Control, Limits enger als Max) |
| Mac | **MacBook Pro 2018** (Intel; schläft mit zugeklapptem Deckel; Akku acht Jahre alt → am Netzteil, Deckel offen, fester Platz; als Dauerläufer Übergangslösung) |
| NAS | eingerichtet (Modell noch unbekannt) |
| Google-Konto | vorhanden |
| Excel | liegt in Google Drive; **es wird eine neue Tabelle angelegt** → Empfehlung: als Google Tabelle |
| Künstlerliste | **gibt es nicht** |
| Textbausteine | ja, geschickt → `textbausteine.md` |
| Sprachnachrichten | geschickt → `sprachnachrichten.md` |
| Weiteres Material | Verlauf in Gemini, Notizen auf dem Handy (noch nicht übernommen) |
| Setcards | 12 Bilder Stripperinnen, 13 Bilder Stripper, nur im WhatsApp-Chat |

### Beispielpreise aus den Texten (Domi passt je Anfrage an)

Stripper 289 €, Stripperin 279 €, Stretchlimousine 1,5 Std. 759 €, Partybus 1,5 Std. inkl. Show 989 €. Zwei Buchungslinks: `/buchung-stripshow/` und `/buchung-shuttle-service/`.

### Feste Fakten aus den Sprachnachrichten

45 Minuten einplanen · Künstler bekommt nach der Buchung alle Daten und ruft kurz vorher an · 10 Minuten Umziehen · eigene Musik, Bluetooth-Box oder USB-Anlage bereitstellen · Show 15 bis max. 20 Minuten · Abschiedsfotos, anstossen · Buchung über den Link, dort der Gesamtpreis inkl. Anfahrt · Rückfragen per Sprachnachricht.

---

## 4. Entscheide und Empfehlungen

### Entschieden

- **Eigenes Repository**, getrennt von streckenfliegen. Keine Kundendaten, Telefonnummern, Passwörter darin.
- **WhatsApp wird nie automatisch gesendet.** Meta verbietet Erwachsenenunterhaltung in den Business-Richtlinien, es droht eine Sperre. Claude bereitet Text + `wa.me`-Link vor, Domi sendet.
- **Rechnungen nur als Entwurf**, Preise entscheidet Domi.
- **Terminal statt PowerShell** auf dem Mac. PowerShell nur, falls Chris' `.ps1`-Skripte 1:1 übernommen werden sollen.
- Die Arbeit soll auf dem **Tower** weitergehen (über einen bestehenden Tower-Chat).

### Empfohlenes Vorgehen (von Chris noch nicht ausdrücklich bestätigt)

1. **Samstag:** nur Anamnese und Befund. Domi macht eine echte Anfrage vor, Chris stoppt Minuten. Abends Minimum einrichten: Claude Code, Büro-Ordner, Remote Control, Kopie der Tabelle (ca. 45 Min.).
2. **Sonntag:** eine Sache bauen (max. 3 Std.), mit drei echten Fällen an Domis Handy testen, Entscheidung. Erst nach seinem Ja: Dauerbetrieb, Sicherung, Neustart-Test, fester Fernzugang.
3. **Zwei Wochen:** Domi nutzt nur dieses eine Werkzeug, zählt Minuten. Nichts Neues bauen.
4. **Anfang Dezember:** Nachschau mit Zahlen; dann Tiefgarage anrufen.
5. **Januar:** restliche Werkzeuge.

**Vorschlag für Fall 0: «Änderung per Zuruf» (W5).** Domi wünscht es, es braucht keine Passwörter oder Schnittstellen, es zeigt Handy → Mac → Tabelle → fertiger WhatsApp-Text. Der Befund vom Samstag entscheidet endgültig.

**Grösstes Risiko:** zu viel bauen. Drei-Stunden-Grenze halten.

### Weitere Empfehlungen

- **Google Tabelle statt Excel-Datei:** Claude schreibt über den Konnektor, kein Konflikt mit geöffneter Datei, Domi sieht sie am Handy, Export als Excel jederzeit.
- **Künstlerliste als erstes Nebenprodukt:** Namen und Leistungen aus den Setcards der Homepage, Region/Gage/Nummer diktiert Domi. Eigener Reiter «Künstler». Nummern nur in der Tabelle, nie im Repository.
- **Gemini-Verlauf und Notizen:** nicht alles ins System. Als Rohmaterial in einen Ordner `wissen/` in Domis Büro; in die Regeln nur Textbausteine, Pflichtdaten, Preislogik. Gemini selbst zusammenfassen lassen («Fass alles zur Agentur und Automatisierung zusammen»).
- **Später ein gebrauchter Mac mini** als Dauerläufer, wenn das System trägt.

---

## 5. Werkzeuge: was wir übernehmen, was wir bauen

### Übernehmen (schon gebaut bei Chris)

| Vorbild | Für Domi |
| :- | :- |
| Büro streckenfliegen: Posteingang + Heute-Liste | Formular-Mails einlesen, offene Anfragen und Zusagen täglich in `heute.md` |
| Tabelle «Buchungen streckenfliegen» | Status-Spalten für die Buchungsliste |
| Camp-Buchung aus Formular | Pflichtdaten-Prüfung |
| Diktat → Bericht (Alina) | Änderung per Zuruf |
| Frederik / reden statt tippen | Domi diktiert unterwegs ins Handy |
| Tower + NAS + Tailscale + tägliche Sicherung | gleiches Grundgerüst auf dem Mac |
| Anleitung für Lisa | Format für Anleitungen an Domi |

### Noch bauen

| # | Werkzeug | Braucht | Aufwand |
| :- | :- | :- | :- |
| W5 | **Änderung per Zuruf** (Zeile finden, sichern, ändern, rot, Text an Künstler) | Tabelle mit Spalten, Text «Nachinformation» | klein – Fall 0 |
| W1 | Anfrage-Leser (Formular-Mail → Zeile + Bestätigungstext) | Mailzugang IMAP, Beispielmails | mittel |
| W3 | Künstler anfragen (Texte für alle passenden) | Künstlerliste, Anfragetext | klein, wenn Liste da |
| W2 | Angebot (Text mit Preis, Setcard-Vorschlag) | Angebotstext, Preislogik, Künstlerliste | mittel |
| W4 | Buchung an Künstler (Mailentwurf, «gesendet» setzen) | Mailversand, Weiterleitungstext | klein |
| W7 | Übersichten (Wochenende, Monat, offene Nachinfos) | saubere Tabelle | klein |
| W6 | Anzahlungsrechnung als LexOffice-Entwurf | API-Schlüssel, Schweiz-Entscheid | mittel, zuletzt |
| W8 | Tandem-Fotos per NAS-Link, 1 Monat gültig | NAS-Freigabelinks | später |

### Konnektoren

Google Drive und Kalender: ja. Google Tabellen: ja, wenn die Liste dorthin wandert. Gmail: nur wenn Anfragen dort ankommen; für web.de braucht es IMAP. LexOffice: kein Konnektor, eigenes Werkzeug. WhatsApp: bewusst keiner.

---

## 6. Was fehlt

### 6.1 In den Dateien nachziehen

`mac-einrichtung.md` kennt die Antworten vom 21.11. noch nicht:
- [x] Claude Pro eintragen (statt «Welcher Plan?»)
- [x] MacBook Pro 2018: Abschnitt 2.2 konkret machen (Netzteil, Deckel offen, fester Platz; höchste unterstützte macOS-Version prüfen)
- [x] Excel → Google Tabelle: Abschnitte 2.8, 2.10, W5 und Regeln in der `CLAUDE.md`-Vorlage umstellen (kein openpyxl, kein «Excel muss geschlossen sein»)
- [x] Künstlerliste als erstes Nebenprodukt aufnehmen
- [x] Ordner `wissen/` für Gemini-Verlauf und Notizen
- [x] Fester Fernzugang (Bildschirmfreigabe über Tailscale oder Chrome Remote Desktop) als Pflichtpunkt, Remote Control als Autostart mit Neustart-Test
- [x] Textbausteine und Sprachnachrichten als vorhanden markieren

### 6.2 Vorlagen aus Chris' Büro (nur vom Tower aus möglich)

- [x] Heute-Liste, Posteingang-Ablauf, tägliche Sicherung, Aufbau der Skills nach `vorlagen/` – ohne Kundendaten und Zugangsdaten
- [ ] Aufbau wie beim Kunstprojekt / SAV-Wettkampf-Ordner abgleichen (die Cloud-Sitzung kannte beide nicht)

### 6.3 Texte, die Domi noch nicht hat oder nicht geschickt hat

- [ ] Angebotstext (Ablauf + Preis), der mit Setcards und Sprachnachricht rausgeht
- [ ] Anfrage an Künstler («Hast du Zeit am …? Gage: …»)
- [ ] Weiterleitung der verbindlichen Buchung an den Künstler
- [ ] **Nachinformation bei Änderung** (wird für Fall 0 gebraucht)
- [ ] Erstangebot Limousine/Partybus

### 6.4 Mit Domi klären (Unstimmigkeiten in seinen Texten, nicht selbst korrigieren)

- [ ] Stretchlimousine: Titel «ohne Stripper oder Stripperin», im Text «+ Stripshow inkl. Abschiedsfotos»
- [ ] Partybus: «für bis für eine Mietdauer» – Personenzahl fehlt
- [ ] Tippfehler («Buchunh», «hinterlass und», «zu Erläutern»), uneinheitliche Signatur
- [ ] Sprachnachrichten: «noch fünf oder sechs verfügbar, das habe ich vorab geklärt» ist fest eingesprochen. Stimmt das bei jeder Anfrage? (Grundsatz: Schlitzohr ja, Lüge nein.)
- [ ] Aus sieben Texten drei Vorlagen mit Platzhaltern machen?

### 6.5 Daten und Zugänge

- [ ] Neue Buchungstabelle anlegen (Google Tabelle): Spalten festlegen, dazu «Status», «Daten an Künstler gesendet», «Änderung nachinformiert»
- [ ] Bisherige Excel in den geteilten Ordner legen, damit die Spalten sichtbar sind
- [ ] Künstlerliste aufbauen
- [ ] Setcard-Bilder ablegen (Drive oder NAS, nicht im Repository)
- [ ] Gemini-Zusammenfassung und Handy-Notizen in `wissen/`
- [ ] Mailpostfach der Formularanfragen: Anbieter, IMAP, App-Passwort
- [ ] Beispiel-Formularmails (3–5 Stück)
- [ ] LexOffice: API im Tarif? Schlüssel
- [ ] System hinter Formular und Buchung auf der Homepage (neue Homepage ist in Arbeit: jetzt strukturierte Felder einplanen)
- [ ] NAS-Modell, Freigaben, Tailscale auf dem NAS
- [ ] Wechsel iPhone → Android: wann?
- [ ] Schweiz-Umzug: LexOffice behalten?
- [ ] Datenschutz: Einstellung zur Trainingsnutzung in Claude prüfen

### 6.6 Technik bei Chris

- [ ] Tower von unterwegs erreichbar machen: bestehenden Tower-Chat nutzen oder TeamViewer QuickSupport (nur solange das Fenster offen ist) oder Lisa
- [ ] Dauerhaft: Chrome Remote Desktop als Dienst auf dem Tower (steht schon in der Anleitung für Lisa unter «Für Chris danach»)
- [ ] Kunstprojekt und SAV-Wettkampf liegen nicht auf GitHub – gewollt?
- [ ] Domi als Collaborator ins Repository einladen (falls er mitlesen soll)

### 6.7 Projekt-To-dos aus der Drive-Tabelle (Stand 30.10., heute überfällig)

| Prio | Aufgabe | Wer | Bis |
| :- | :- | :- | :- |
| 1 | Aufzug-Satz 30/60 Sek. | Chris | 08.11. |
| 1 | Stunden pro Woche bis Januar: Zahl nennen | beide | 08.11. |
| 1 | Antwort auf «Was kostet das?» | beide | 15.11. |
| 2 | Messen festlegen: Minuten vorher/nachher, Ziel 20 Fälle | beide | 15.11. |
| 2 | Alina messen | Chris | 15.11. |
| 2 | Autohändler fragen | Domi | 15.11. |
| 2 | Buddy-Tag 10.11.: Stand nachtragen | Chris | 10.11. |
| 2 | Tiefgarage anrufen (wartet auf Aufzug-Satz + Preis) | Domi | 30.11. |
| 3 | «Ich überlege es mir», online/vor Ort, Januar bauen | beide | Januar |

Messen und Preisantwort lassen sich am Wochenende mit Fall 0 erledigen.

### 6.8 Nach dem Wochenende

- [ ] Protokoll Fall 0 in `protokolle/` (Problem in seinen Worten, was gezeigt, Reaktion, Minuten vorher/nachher, nächster Schritt)
- [ ] Drive-Tabelle aktualisieren (Reiter Kunden: «Domi, Agentur»)
- [ ] Was für alle Kunden taugt, nach `vorlagen/` (Gesprächsleitfaden, Büro-Grundgerüst, Minuten-Tabelle)

---

## 7. Was in dieser Sitzung nicht ging

- Kein Zugriff auf Tower, NAS und WhatsApp aus der Cloud. Chat und Sprachnachrichten kamen als Export von Chris.
- Die Sprachnachrichten wurden in der Cloud transkribiert (Whisper medium), nicht auf dem Tower. Erkennungsfehler von Hand geglättet; nicht gegen die Aufnahme geprüft.
- Die Setcard-Bilder waren im Export nicht enthalten.
- Nichts in dieser Sitzung wurde an Domis Mac getestet. Alle Befehle in `mac-einrichtung.md` sind vor Ort zu prüfen, besonders Remote Control als Autostart.

---

## 8. Auftrag für die nächste Sitzung (z. B. Tower-Chat)

> Neues Projekt, getrennt von streckenfliegen. Klone https://github.com/christopherfromm-dev/zeit-sparen in einen eigenen Ordner neben dem Büro (nicht hinein). Lies CLAUDE.md und UEBERGABE.md. Arbeite nur in diesem Ordner, schreibe nichts ins streckenfliegen-Repository.
>
> 1. `kunden/domi-agentur/mac-einrichtung.md` nach Abschnitt 6.1 der Übergabe anpassen.
> 2. Vorlagen aus dem Büro nach `vorlagen/` kopieren (Abschnitt 6.2), ohne Kundendaten und Zugangsdaten.
> 3. Entwurf für die neue Buchungstabelle (Spalten) und für den Text «Nachinformation bei Änderung» schreiben.
> 4. Committen und pushen.
