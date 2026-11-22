# Der Weg: Anfrage bis Buchung (Formular, rund 70 % der Anfragen)

Stand 22.11.2026, Vorschlag von Claude zum Präsentieren. Noch nichts gebaut, nichts an Domis Webseite oder WhatsApp geändert. Die Entwürfe für Texte unten passt Domi an, es sind seine Kunden.

## Entscheid vom 22.11.2026 (nach diesem Vorschlag)

Chris und Domi: **Für Limited Strip Events darf automatisch per WhatsApp gesendet werden.** Das Sperrrisiko kennt Domi, es steht in seinem eigenen Dokument. Für streckenfliegen.com gilt das nicht. Damit ist die «Stufe danach» unten nicht mehr aufgeschoben: Das Angebot darf von selbst rausgehen. Der Abschnitt «Der Weg mit Automatik» am Ende dieser Datei beschreibt das.

## Der Gedanke in einem Satz

Der Kunde schreibt Domi zuerst, nicht umgekehrt. Dann ist die Nummer geprüft, niemand Fremdes bekommt Post, und WhatsApp darf von sich aus sofort antworten.

## So läuft es

| Schritt | Was passiert | Wer |
| :- | :- | :- |
| 1 | Kunde schickt das Anfrageformular ab | Kunde |
| 2 | Sofort erscheint die Danke-Seite mit einem grossen Knopf **«Angebot per WhatsApp holen»**. Dieselbe Mail geht an seine Adresse, mit demselben Knopf | Webseite, von selbst |
| 3 | Kunde tippt auf den Knopf. WhatsApp öffnet sich mit fertigem Text, er drückt Senden | Kunde |
| 4 | WhatsApp Business antwortet sofort mit der Begrüssungsnachricht | WhatsApp, von selbst |
| 5 | Domi schickt das Angebot als gespeicherte Schnellantwort: Text, Preis aus der Karte, Buchungslink, Setcards, Sprachnachricht | Domi, zwei Tipps |
| 6 | Kunde bucht über den Link | Kunde |

## Was das löst

- **Der Erstkontakt ist sofort da**, Tag und Nacht, auch wenn Domi in der Luft ist. Sein eigenes Mass (30 bis 60 Minuten) ist damit für Schritt 1 immer erfüllt.
- **Die Rückfrage «Ist das deine Anfrage?» entfällt**, samt Screenshot. Wer schreibt, hat sich selbst bestätigt.
- **Keine Nachricht an Fremde.** Wer eine fremde Nummer einträgt, erreicht nichts, weil nur der schreiben kann, der das Handy in der Hand hat.
- **Kein neues Risiko für die Nummer.** Es wird nichts automatisch verschickt ausser der eingebauten Begrüssung, die jede Business-App hat.
- **Kein neues Werkzeug**, keine Kosten, nichts, was beim Wechsel auf Android verloren geht.

## Was es nicht löst

- **Das Angebot (Schritt 5) schickt weiter Domi.** Es sind zwei Tipps statt Kopieren aus den Notizen, aber er muss ans Handy. Nach drei Stunden Flug liegen die Angebote noch da.
- Telefon und Anfragen, die direkt per WhatsApp kommen, laufen wie bisher (dort greift nur die Begrüssung).
- Kunden, die den Knopf nicht antippen. Für die bleibt die Formular-Mail bei Domi, er kann wie heute nachfassen.

## Die Stufe danach (nicht heute)

Das Angebot von selbst: Auf die erste Nachricht des Kunden folgt automatisch Text, Preis aus der Karte (über die PLZ), Link und Setcards. Dafür braucht es die WhatsApp-Schnittstelle (ManyChat oder ähnlich). Laut den Regeln von WhatsApp sind Angebote für Erwachsenenunterhaltung eingeschränkt, das Risiko trägt Domis Nummer. Diesen Entscheid trifft Domi, in Ruhe, wenn Stufe 1 zwei Wochen läuft. Eine zweite Nummer nur für die Automatik wäre ein Weg, das Risiko von der Hauptnummer fernzuhalten.

## Die eine Sache für heute

Stufe 1 am Anfrageformular «Strip» bauen und mit dem eigenen Handy testen. Vier Handgriffe:

1. **Danke-Seite** in WordPress anlegen, mit dem Knopf.
2. **Im Formular** (Elementor, «Actions After Submit»): Weiterleitung auf die Danke-Seite und zweite Mail an den Kunden einschalten.
3. **WhatsApp Business:** Begrüssungsnachricht einschalten, Empfänger «alle, die nicht im Adressbuch sind».
4. **WhatsApp Business:** die Angebote als Schnellantworten speichern (z. B. `/gs`, `/ms`).

Test: Chris füllt das Formular am Handy aus. Gestoppt wird vom Absenden bis zur Begrüssung beim Kunden und bis zum Angebot.

## Entwürfe für die Texte (Domi passt an)

**Knopf, vorgefüllte Nachricht des Kunden:**

```
Hallo, ich habe gerade eine Anfrage über euer Formular geschickt. Bitte schickt mir das Angebot.
```

Link dazu: `https://wa.me/<Agenturnummer mit Ländervorwahl, ohne + und Leerzeichen>?text=Hallo%2C%20ich%20habe%20gerade%20eine%20Anfrage%20%C3%BCber%20euer%20Formular%20geschickt.%20Bitte%20schickt%20mir%20das%20Angebot.`

**Danke-Seite:**

```
Danke, deine Anfrage ist bei uns angekommen.

Noch ein Tipp, dann hast du dein Angebot: Über den Knopf bekommst du es direkt per WhatsApp, mit Preis, Ablauf und den verfügbaren Künstlerinnen und Künstlern.

[Angebot per WhatsApp holen]

Lieber per E-Mail? Dann antworte einfach auf unsere Bestätigungsmail.
```

**Bestätigungsmail an den Kunden:** derselbe Text mit demselben Knopf.

**Begrüssungsnachricht in WhatsApp:**

```
Hi, danke für deine Nachricht. Deine Anfrage ist da. Du bekommst gleich dein unverbindliches Angebot mit Preis und Ablauf.

LIMITED STRIP EVENTS
- Dominic -
```

## Vor Ort zu prüfen

- Ob Elementor Pro bei Domi «Redirect» und «Email 2» anbietet (laut Elementor-Doku ja).
- Ob eine Schnellantwort am iPhone Bilder und die Sprachnachricht mitnimmt. Sonst: Text als Schnellantwort, Setcards und Sprachnachricht wie heute weiterleiten.
- Ob die Begrüssungsnachricht auch kommt, wenn der Kunde über den Knopf schreibt (sollte, es ist seine erste Nachricht).

## Der Weg mit Automatik (nach dem Entscheid vom 22.11.)

Die Schritte 1 bis 4 bleiben. Schritt 5 übernimmt die Automatik:

| Schritt | Was passiert | Wer |
| :- | :- | :- |
| 1 bis 3 | Formular, Danke-Seite und Mail mit Knopf, Kunde schreibt per WhatsApp | wie oben |
| 4 und 5 | Auf die Nachricht des Kunden folgt sofort das ganze Angebot: Text, Preis, Buchungslink, Setcards, Sprachnachricht | Automatik (ManyChat oder ähnlich) |
| 6 | Kunde bucht über den Link | Kunde |

Domi tut bis zur Buchung nichts. Er sieht den Chat und kann jederzeit selbst übernehmen.

**Warum der Knopf bleibt, obwohl automatisch gesendet werden darf:**
- Schreibt der Kunde zuerst, darf das Unternehmen laut WhatsApp 24 Stunden lang frei antworten, auch mit Bildern und Ton.
- Schreibt das Unternehmen zuerst, braucht es eine von Meta genehmigte Vorlage und die Zustimmung des Kunden. Ob Meta eine Vorlage für dieses Geschäft genehmigt, ist offen.
- Die Nummer ist geprüft, Fremde bekommen nichts.

**Noch nicht nachgelesen, beim Einrichten zu prüfen:**
- Ob sich Domis Nummer mit ManyChat verbinden lässt und dabei in der Business-App bleibt («Coexistence»).
- Ob Meta das Geschäft beim Verbinden annimmt. Das zeigt sich erst beim Versuch.
- Was ManyChat und die Nachrichten kosten.
- Wie der Preis in die Nachricht kommt: aus der Karte über die PLZ. Für den Anfang reicht ein Angebot je Leistung mit dem Preis der Karte für die genannte Stadt; die Automatik fragt die PLZ ab oder liest sie aus der Nachricht.

**Empfehlung:** die Automatik zuerst mit einer zweiten Nummer ausprobieren, damit die Hauptnummer nicht am ersten Versuch hängt.

## Nachtrag nach den Screenshares (22.11., Mittag)

Die Aufnahmen (`ist-ablauf-aus-screenshares.md`) bestätigen den Weg und machen ihn einfacher:

- **Danke-Seite und Bestätigungsmail an den Kunden gibt es schon.** Handgriff 1 und 2 von «Die eine Sache für heute» schrumpfen auf: zwei bestehende Texte ändern und den Knopf einsetzen. Keine neue Seite, keine neue Formular-Aktion.
- **Was der Knopf an Handarbeit spart:** beim Erstkontakt fünf von acht Handgriffen (Kontakt anlegen, Nummer umformen, Screenshot, Notiz kopieren, Kontakt suchen), heute 58 Sekunden je Anfrage.
- **Die rund 30 %, die auf die Rückfrage nicht antworten,** fallen weg, weil der Kunde selbst zuerst schreibt. Dafür ist neu zu messen, wie viele den Knopf antippen. Wer ihn nicht antippt, bleibt als Formular-Mail bei Domi wie heute.
- **Reihenfolge des Angebots** nach dem Test: Sprachnachricht, Setcards, zuletzt kurz Preis und Buchungslink, damit der Link unten steht.
- **Für die Automatik bereitzulegen:** Setcards als Dateien (Stripperinnen liegen im Drive, Stripper fehlen), die vier Sprachnachrichten als Dateien, die Preise für Schweiz und Österreich.
- **Zweite Baustelle, gleiche Säule:** Buchungslink mit vorausgefüllten Daten und festem Preis, gegen doppeltes Tippen und falsche Preise.
