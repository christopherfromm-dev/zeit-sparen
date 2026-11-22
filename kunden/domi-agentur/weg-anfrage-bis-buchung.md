# Der Weg: Anfrage bis Buchung (Formular, rund 70 % der Anfragen)

Stand 22.11.2026, Vorschlag von Claude zum Präsentieren. Noch nichts gebaut, nichts an Domis Webseite oder WhatsApp geändert. Die Entwürfe für Texte unten passt Domi an, es sind seine Kunden.

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
