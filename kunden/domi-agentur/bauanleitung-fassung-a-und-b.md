# Bauanleitung: Fassung A und Fassung B

Stand 22.11.2026. Gehört zu `weg-anfrage-bis-buchung.md`. Noch nichts gebaut. Die Zeiten sind Schätzungen von Claude. Die Klickwege in WordPress, WhatsApp Business und ManyChat stammen aus Claudes Wissen und sind an Domis Geräten nicht geprüft; wo ein Knopf anders heisst, ein Foto schicken.

## Das Bild dazu

**Fassung A ist ein Klingelschild und ein Zettelkasten.** An der Tür steht gross «Hier klingeln für dein Angebot». Der Kunde klingelt. Drinnen sagt eine Stimme vom Band «Bin gleich da». Domi greift in den Zettelkasten und reicht das fertige Angebot hinaus. Er muss noch selbst zur Tür.

**Fassung B ist ein Automat an derselben Tür.** Der Kunde klingelt, der Automat fragt «Stripper oder Stripperin? Welche Postleitzahl?» und gibt das Angebot mit dem richtigen Preis selbst heraus. Domi muss nicht zur Tür. Dafür muss jemand den Automaten aufstellen, füllen und der Hausverwaltung (Meta) melden, und die kann Nein sagen.

---

## Fassung A: Knopf und Texte

**Zeit: rund 1,5 Stunden für das Formular «Strip», mit Stolpern 2 Stunden.** Die anderen zwei Anfrageformulare danach je rund 15 Minuten.

### A1. Den Link für den Knopf bauen (5 Minuten)

Der Link sieht so aus. Für `<NUMMER>` kommt Domis Agenturnummer hinein, mit Ländervorwahl, ohne Plus, ohne Null, ohne Leerzeichen (aus 0151 … wird 49151 …):

```
https://wa.me/<NUMMER>?text=Hallo%2C%20ich%20habe%20gerade%20eine%20Anfrage%20%C3%BCber%20euer%20Formular%20geschickt.%20Bitte%20schickt%20mir%20das%20Angebot.
```

Probe: Link am Handy antippen. WhatsApp geht auf, der Chat mit Domi ist offen, der Text steht schon im Feld.

### A2. Die Danke-Seite ändern (20 Minuten)

1. In WordPress anmelden.
2. Links auf **Seiten**, die Danke-Seite der Anfrage suchen (die mit «Wie geht es jetzt weiter?»).
3. **Mit Elementor bearbeiten** anklicken.
4. Die Überschrift anklicken und ändern in: «Letzter Schritt: Hol dir dein Angebot per WhatsApp».
5. Links aus der Liste das Element **Button** unter die Überschrift ziehen.
6. Beim Button: Text «Angebot per WhatsApp holen», bei **Link** den Link aus A1 einfügen.
7. Den Text darunter ersetzen (Entwurf in `weg-anfrage-bis-buchung.md`).
8. Unten auf **Aktualisieren**.

### A3. Die Bestätigungsmail ändern (15 Minuten)

1. Die Seite mit dem Anfrageformular «Strip» mit Elementor öffnen.
2. Das Formular anklicken. Links erscheinen seine Einstellungen.
3. Den Abschnitt **E-Mail 2** aufklappen. Das ist die Mail an den Kunden.
4. Im Feld **Nachricht** den Anfang ersetzen: zuerst die Aufforderung, dann der Link aus A1, dann wie bisher die gesamte Anfrage.
5. «Innerhalb weniger Stunden» und den Satz «Wichtig: Hier geht es nach Rücksprache …» herausnehmen.
6. **Aktualisieren**.

### A4. Die Begrüssung in WhatsApp einschalten (5 Minuten)

1. WhatsApp Business öffnen, **Einstellungen**.
2. **Unternehmenstools** (oder «Business-Tools»), dann **Begrüssungsnachricht**.
3. Einschalten, Text einfügen (Entwurf in `weg-anfrage-bis-buchung.md`).
4. Bei **Empfänger**: «Alle, die nicht im Adressbuch sind». Dann bekommen die Künstler sie nicht.
5. Speichern.

### A5. Die Angebote als Schnellantworten ablegen (20 Minuten)

1. In denselben **Unternehmenstools**: **Schnellantworten**, dann das Plus.
2. Den Text aus der Notiz «LSE Buchung Whats App GS» einfügen, Kürzel `gs`. Speichern.
3. Dasselbe für MS (`ms`), Limo, Shuttle.
4. Ausprobieren, ob sich an eine Schnellantwort Bilder anhängen lassen. Wenn ja: je eine Schnellantwort mit den Setcards (`setgs`, `setms`).
5. Im Chat tippt Domi später nur `/gs`, wählt aus, ändert den Preis nach der Karte, sendet.

Die Sprachnachricht bleibt vorerst wie heute. Schneller geht es, wenn die vier Aufnahmen einmal in einem Chat mit sich selbst liegen und von dort weitergeleitet werden statt aus der Mail.

### A6. Test (15 Minuten)

1. Chris füllt am Handy das Anfrageformular aus und stoppt die Zeit.
2. Auf der Danke-Seite den Knopf antippen, in WhatsApp auf Senden.
3. Kommt die Begrüssung sofort? Zeit notieren.
4. Domi schickt mit `/gs` das Angebot. Zeit notieren.
5. In der Bestätigungsmail den Knopf ebenfalls antippen.

### Was bei A offen bleibt

Die WhatsApp des Kunden sagt nicht von selbst, zu welcher Anfrage sie gehört. Domi sieht Uhrzeit und Profilnamen und schaut wie heute in die Mail. Versuch dazu (15 Minuten): im Link der Bestätigungsmail die Formularfelder einsetzen, damit im Text «Stripperin, 22.11., PLZ 3800, Christopher» steht. Ob Elementor das in einem Link sauber macht, zeigt nur der Versuch.

---

## Fassung B: Knopf und Automatik

**Zeit: 5 bis 7 Stunden Arbeit, wenn Meta mitspielt.** Die Anmeldung bei Meta kann zusätzlich Stunden bis Tage Wartezeit bringen oder scheitern. A1 bis A3 und A6 gehören auch zu B und sind in der Zeit enthalten.

### B1. Entscheiden, welche Nummer (10 Minuten Gespräch)

- **Zweite Nummer** (Empfehlung): eine Prepaid-Karte oder eSIM nur für die Automatik. Die Hauptnummer bleibt unberührt. Folge: Die Kunden aus dem Formular schreiben mit der zweiten Nummer, und Domi liest diese Chats in der ManyChat-App, nicht in seinem WhatsApp.
- **Hauptnummer:** alles bleibt in einem WhatsApp. Folge: Bei einer Sperre steht der ganze Kanal. Ob die Nummer dabei in der Business-App bleiben kann, ist nicht nachgelesen.

Karte besorgen und aktivieren: 30 Minuten, falls nicht schon da.

### B2. Konto bei ManyChat anlegen (15 Minuten)

1. Auf manychat.com ein Konto anlegen.
2. Als Kanal **WhatsApp** wählen.
3. Den Tarif ansehen. Für WhatsApp braucht es nach Claudes Wissen den bezahlten Tarif; Preis nicht nachgelesen.

### B3. Die Nummer mit WhatsApp verbinden (30 bis 60 Minuten, hier kann es hängen)

1. ManyChat führt zu Meta. Dort braucht es ein Unternehmenskonto bei Meta (Facebook Business). Falls keines da ist: anlegen.
2. Firmenname, Webseite und Branche angeben. **Hier sieht Meta, was die Agentur macht.**
3. Die Nummer eintragen und mit dem Code aus SMS oder Anruf bestätigen.
4. Den Anzeigenamen wählen. Meta prüft ihn.
5. Warten, bis ManyChat «verbunden» zeigt.

Lehnt Meta ab oder verlangt Unterlagen, endet B hier für heute. A läuft trotzdem.

### B4. Das Material hochladen (20 Minuten)

Setcards (Stripperinnen liegen im Drive, Stripper fehlen), die vier Sprachnachrichten, der Text «So buchst du».

### B5. Die Preistabelle bauen (Claude: 45 Minuten, Domi: 15 Minuten Gegenlesen)

Aus der Preiskarte wird eine Google Tabelle «Preise»: in jeder Zeile die ersten zwei Ziffern der PLZ, der Preis für Girl Strip, der Preis für Man Strip. Beispiel: `70` (Stuttgart) → 279. Wo zwei Ziffern nicht reichen (ein Kreis auf der Karte schneidet eine Region), kommt eine genauere Zeile dazu. Schweiz und Österreich brauchen eigene Zeilen, die Preise fehlen noch.

Claude baut die Tabelle aus der Karte vor. Domi liest sie gegen, es sind seine Preise.

### B6. Den Ablauf in ManyChat bauen (1,5 bis 2 Stunden)

In ManyChat unter **Automatisierung** einen neuen Ablauf anlegen:

1. **Auslöser:** Der Kunde schreibt eine Nachricht, in der «Anfrage» vorkommt (das ist der Text aus dem Knopf).
2. **Frage 1:** «Was darf es sein?» mit zwei Knöpfen: Stripperin, Stripper.
3. **Frage 2:** «Wie lautet die Postleitzahl der Show?» Der Kunde tippt sie ein.
4. **Preis holen:** in der Google Tabelle «Preise» die Zeile zur PLZ suchen.
5. **Senden:** die passende Sprachnachricht, die passenden Setcards, zuletzt «So buchst du: Gesamtpreis … €, hier der Link».
6. **Wenn kein Preis gefunden wird** (Ausland, Tippfehler): «Dominic meldet sich gleich bei dir» und eine Meldung an Domi.
7. **Meldung an Domi** bei jeder neuen Anfrage, damit er den Chat sieht.

Die Fragen 1 und 2 fallen weg, wenn der Knopf die Angaben aus dem Formular mitschickt (Versuch aus «Was bei A offen bleibt»).

### B7. Den Knopf auf die richtige Nummer stellen (5 Minuten)

Bei einer zweiten Nummer: in A1 die Nummer tauschen, Danke-Seite und Bestätigungsmail aktualisieren.

### B8. Test (30 Minuten)

Drei Durchläufe am Handy von Chris: Stripperin in Stuttgart, Stripper in Kassel (dort gelten zwei Preise), eine PLZ in der Schweiz (dort muss die Automatik an Domi übergeben). Jedes Mal prüfen: richtiger Preis, richtige Setcards, Link am Schluss, Meldung bei Domi.

---

## Zeit auf einen Blick

| | Arbeit | Kann hängen an | Wirkt |
| :- | :- | :- | :- |
| **Fassung A** | 1,5 bis 2 Stunden | nichts Fremdem | heute Abend |
| **Fassung B** | 5 bis 7 Stunden, davon 1,5 für A | Meta (Annahme, Prüfung), ManyChat-Tarif | frühestens morgen, eher nach Tagen |

**Laufende Kosten:** A keine. B: ManyChat im Monat und Gebühren von WhatsApp je Gespräch, beides nicht nachgelesen.

**Reihenfolge, die Claude empfiehlt:** heute A1 bis A6 (2 Stunden). Parallel die Preistabelle B5, weil Domi sie auch in A zum Nachschlagen braucht. B2 und B3 als Versuch mit zweiter Nummer starten und sehen, ob Meta annimmt. Erst wenn «verbunden» steht, B6 bauen.
