# Gesprächsvorbereitung: Domi als erster Kunde (Fall 0)

Termin: 22./23.11.2026 bei Domi. Stand 21.11.2026.
Ablauf nach der «Checkliste Erstgespräch»: Anamnese → Befund → Therapie (kleinste Lösung) → Testcase → seine Entscheidung → erst dann das ganze System (siehe `mac-einrichtung.md`).

**Die Frage hinter dem Termin:** Wäre Domi ein Kunde für «Zeit sparen», wenn er nicht dein Partner wäre? Wir behandeln ihn wie einen echten Kunden, damit wir den Ablauf an jemandem üben, der ehrlich sagt, was nicht funktioniert.

---

## 0. Rahmen setzen (5 Min.)

Beim Reinkommen kurz und offen sagen:

> «Heute bist du mein erster Kunde. Ich mache mit dir genau das, was wir später beim Unternehmer aus der Tiefgarage machen. Sag mir bitte ehrlich, wenn sich etwas falsch anfühlt, als Kunde und als Verkäufer.»

- Wie viel Zeit haben wir heute? Wann muss er weg?
- Wo arbeitet er wirklich? (Am Mac, am Handy, im Auto?) Dort sitzen wir.
- Aufnahme fürs Protokoll? Nur mit seinem Ja.

---

## 1. Anamnese: fragen und zuhören (30–45 Min.)

Nicht mit Lösungen anfangen. Nicht «Was soll ich automatisieren?». Seine Wörter notieren.

**Das Ziel hinter der Arbeit**
- «Was willst du eigentlich, in einem Jahr?» (Schweiz? Mehr Shows? Weniger Abende am Handy? Tandem?)
- «Was würdest du mit zwei Stunden mehr am Tag machen?»
- «Wann hast du zuletzt einen Abend gehabt, ohne dass WhatsApp gepiept hat?»

**Der Tag**
- «Zeig mir einen normalen Tag. Wann kommen die meisten Anfragen?» (Wochentag, Uhrzeit, Saison)
- «Wie viele Anfragen pro Woche? Wie viele werden Buchungen?»
- «Was machst du jeden Tag, das dich nervt?»
- «Was machst du immer wieder gleich, mit Copy-Paste?»

**Gezielt zu seinem Ablauf** (aus seinem Dokument, aber als Frage, nicht als Behauptung)
- Anfrage → Bestätigung: «Wie oft passiert ein Zahlendreher bei der Nummer?»
- Angebot: «Wie lange brauchst du, bis die passenden Setcards zusammen sind?»
- Künstler anfragen: «Wie viele schreibst du an, bis einer zusagt? Wie lange wartest du?»
- Änderungen: «Wie oft ändert sich etwas nach der Buchung? Ist schon mal ein Künstler mit der alten Adresse losgefahren?»
- Excel: «Wann pflegst du die Liste: sofort oder abends gesammelt?»
- Rechnung: «Wie lange dauert eine Anzahlungsrechnung in LexOffice?»
- «Wo hast du Angst, dass etwas untergeht?»

**Zuschauen statt nur fragen** (der wichtigste Teil)
- «Mach mir bitte eine echte Anfrage von heute vor, von Anfang bis Ende. Ich schaue nur zu.»
- Mitschreiben: was er tippt, sucht, kopiert, wo er wartet. **Minuten stoppen.**

| Schritt | Was er tut | Minuten | Nervt ihn? (1–5) |
| :- | :- | :- | :- |
| Anfrage lesen | | | |
| Pflichtdaten prüfen | | | |
| Kunde bestätigen | | | |
| Angebot | | | |
| Künstler anfragen | | | |
| Buchung an Künstler | | | |
| Rechnung | | | |
| Excel | | | |
| Änderung nachtragen | | | |

---

## 2. Befund: zurückspiegeln (10 Min.)

Mit seinen Wörtern wiederholen, dann eine Verständnisfrage. Beispiel (anpassen an das, was er wirklich sagt):

> «Ich höre: Jede Anfrage kommt am Ende in WhatsApp an, und du tippst die gleichen Daten drei-, viermal ab: in die Bestätigung, ins Angebot, in die Künstleranfrage und in die Excel. Und wenn sich etwas ändert, musst du dir merken, wem du es schon geschickt hast.»
>
> «Stimmt das so? Wie oft pro Woche ist das?»

- Warten, bis er selbst sagt: «Ja, genau das ist das Problem.»
- Dann **das kleinste Problem** wählen, nicht das grösste. Kriterien:
  1. kommt oft vor,
  2. nervt ihn spürbar,
  3. lässt sich in einer halben bis drei Stunden echt lösen,
  4. braucht keine Passwörter, APIs oder Meta/WhatsApp.

**Vermutung (nicht vorwegnehmen!):** «Änderung per Zuruf» erfüllt alle vier. Wenn er im Gespräch aber etwas anderes stärker nennt, nehmen wir das.

**Hypothesen, die wir prüfen**

| Vermutung | Wie prüfen | Bestätigt? |
| :- | :- | :- |
| Die Daten werden mehrfach abgetippt | zuschauen, zählen | |
| Änderungen sind häufig und riskant | «Wie viele letzte Woche?» | |
| Die Künstlerliste existiert nur im Kopf/WhatsApp | «Zeig mir, wo du schaust, wer in Region X kann» | |
| Er arbeitet vor allem am Handy, nicht am Mac | beobachten | |
| Abends sitzt er noch an der Excel | fragen | |

---

## 3. Therapie: die kleinste Lösung (30 Min. bis 3 Std.)

> «Ich habe eine Überlegung. Gib mir eine halbe Stunde, arbeite du weiter.»

- Mit dem Laptop/Mac weggehen. Nicht vor seinen Augen bauen.
- Vorbereitung für den Fall «Änderung per Zuruf» (Details in `mac-einrichtung.md`, W5):
  - Kopie seiner Excel-Jahresliste in `~/buero/daten/`
  - zwei Spalten ergänzen: «Daten an Künstler gesendet», «Änderung nachinformiert»
  - Skill: Zeile finden → sichern → ändern → rot markieren → WhatsApp-Text an den Künstler + `wa.me`-Link
- Nur bauen, was echt wirkt und bleibt. Kein Fünf-Minuten-Effekt.
- Geht es nicht in der Zeit: sagen, bis wann, und halten.

---

## 4. Testcase: er sieht, wie es funktioniert (20 Min.)

Mit **echten** Änderungen der letzten Wochen, nicht mit ausgedachten.

1. Domi nimmt **sein Handy**, öffnet Claude, spricht oder tippt:
   > «Bei der Show am Samstag in Memmingen hat sich die Uhrzeit auf 22 Uhr geändert.»
2. Am Mac passiert: Zeile gefunden, Kopie gesichert, Uhrzeit geändert, rot markiert.
3. Zurück aufs Handy kommt: «Erledigt. Der Künstler hat die Daten schon. Hier der Text, tipp zum Senden: [wa.me-Link]»
4. Domi tippt, WhatsApp öffnet sich mit fertigem Text, er sendet selbst.
5. Gegenprobe: Excel am Mac öffnen, rotes Feld zeigen, Sicherungskopie zeigen.

Drei Durchläufe: einfache Änderung, Künstlerwechsel, unklare Angabe («die Show nächste Woche», damit er sieht, dass Claude nachfragt statt rät).

**Stoppen:** Minuten pro Änderung vorher (aus Abschnitt 1) gegen nachher.

---

## 5. Präsentieren und seine Entscheidung (10 Min.)

> «Das ist dein Problem. Das ist meine Lösung. Jetzt ist es deine Entscheidung.»

**Den Wert aus ihm holen, nicht selbst rechnen:**
- «Wie viele Änderungen hast du pro Woche?»
- «Wie lange hat eine bisher gedauert, mit Nachdenken, wem du es schon geschickt hast?»
- «Was machst du mit der Zeit?» «Wie lange?» «Jede Woche?»
- «Was wäre es dir wert, wenn nie mehr ein Künstler mit der alten Adresse losfährt?»

**Einwände, die wir von ihm (und später von Kunden) hören werden**

| Einwand | Antwort |
| :- | :- |
| «Das kann ich mit ChatGPT/Gemini auch.» | «Ja, das Werkzeug hast du. Wir bauen dir den Butler, der deine Excel, deine Künstler und deine Regeln kennt und mitlernt.» |
| «Ich überlege es mir.» | Fragen, was zögern lässt. Oft ist es die Zeit fürs Einbauen. Offen sagen: Es ist ein Invest, die ersten zwei Wochen kostet es Zeit. |
| «Und wenn es etwas Falsches einträgt?» | Sicherungskopie vor jeder Änderung, rote Markierung, WhatsApp und Rechnung sendet immer er selbst. |
| «Was, wenn WhatsApp mich sperrt?» | Darum senden wir nie automatisch. Nur vorbereitete Texte. |
| «Was kostet das?» | **Antwort steht noch nicht (To-do, überfällig seit 15.11.).** Für Domi heute: gratis gegen ehrliche Zahlen. Aber an ihm üben: Was würde er sagen, wenn wir X nennen? |

**Ehrlich als Verkäufer fragen** (das ist der eigentliche Gewinn von Fall 0):
- «Hättest du als Kunde jetzt Ja gesagt? Warum, warum nicht?»
- «Welcher Satz von mir hat gewirkt, welcher war zu viel?»
- «Was hätte der Unternehmer aus der Tiefgarage gefragt?»

---

## 6. Wenn er überzeugt ist: das ganze System

Erst jetzt, nicht vorher:
1. Mac als laufendes Büro einrichten (`mac-einrichtung.md`, Abschnitt 2), Remote Control dauerhaft.
2. Sicherung, Neustart-Test, Notfallzugang.
3. Zwei Wochen nur W5 nutzen, Minuten zählen. Nachschau Anfang Dezember.
4. Danach in dieser Reihenfolge: W1 Anfrage-Leser → W3 Künstler anfragen → W2 Angebot → W4 Buchung an Künstler → W7 Übersichten → W6 LexOffice.
5. Was dafür fehlt, einsammeln: Künstlerliste, Textbausteine, Beispiel-Formularmails, Mailzugang, LexOffice-API.

**Wenn er nicht überzeugt ist:** Das ist auch ein Ergebnis. Herausfinden, woran es lag (Problem falsch gewählt? Lösung zu klein? Zu technisch?), und das in den Ablauf für echte Kunden übernehmen.

---

## 7. Nachher: Protokoll (5 Zeilen)

- Sein Problem in seinen Worten:
- Was wir gezeigt haben:
- Seine Reaktion (Zitat):
- Minuten vorher / nachher:
- Nächster Schritt + Datum:

Dazu:
- Tabelle «To-dos, Kunden und Use Cases», Reiter «Kunden», Zeile «Domi, Agentur»: Problem, Stand, nächster Schritt eintragen.
- Was habe ich als «Therapeut» gelernt? Welche Frage hat das Aha ausgelöst?
- Daraus Material für den Aufzug-Satz und die Preisantwort (beide überfällig) mitnehmen.

---

## Spickzettel (eine Karte)

1. Rahmen: «Heute bist du mein erster Kunde. Sag ehrlich, was falsch wirkt.»
2. Anamnese: «Was willst du eigentlich?» → zeig mir eine echte Anfrage, ich stoppe die Minuten.
3. Befund: seine Wörter + «Stimmt das? Wie oft?» → kleinstes Problem wählen.
4. Therapie: «Gib mir eine halbe Stunde.» Weggehen. Echt bauen.
5. Test: sein Handy, seine echte Änderung, er sendet selbst.
6. Entscheidung: «Dein Problem, meine Lösung, deine Entscheidung.» Wert aus ihm holen.
7. Erst bei Ja: ganzes System.
8. Protokoll, Tabelle, Lernpunkte.
