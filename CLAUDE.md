# Zeit sparen

Projekt von Chris und Domi, getrennt von streckenfliegen.com. Nichts von hier nach streckenfliegen schreiben und umgekehrt.

## Regeln
- Sprache: Deutsch, Schweizer Schreibweise (ss statt ß), kurz und konkret.
- Keine Kundendaten, Telefonnummern, Passwörter oder Schlüssel ins Repository.
- Pro Kunde ein Ordner unter `kunden/`. Was für mehrere Kunden taugt, wandert nach `vorlagen/` oder `werkzeuge/`.
- Ablauf mit jedem Kunden: Anamnese, Befund, kleinste Lösung, Testcase, seine Entscheidung, erst dann das ganze System.
- Weniger ist mehr: ein Werkzeug, das täglich genutzt wird, vor dem nächsten.
- Claude selbst sendet nie etwas an Dritte (WhatsApp, Mail, Rechnung). Claude bereitet vor und baut.
- Ob ein gebautes System beim Kunden automatisch sendet, entscheidet der Kunde für sein Unternehmen, nachdem er das Risiko kennt.
- **Limited Strip Events (Domi), Entscheid 22.11.2026 nachmittags:** kein Weg, bei dem im schlechtesten Fall das WhatsApp-Konto der Agentur gesperrt wird. Chris: «Mit dem Worst Case können wir nicht leben.» Damit entfallen die WhatsApp-Schnittstelle (ManyChat und Ähnliches, Anmeldung bei Meta) und jede Automatik, die über Domis eigenes WhatsApp von selbst sendet. Erlaubt bleibt: was die Business-App selbst kann (Begrüssung, Schnellantworten), Nachrichten, die Domi von Hand abschickt, und automatische Mails. Der Entscheid vom Mittag («automatisch per WhatsApp ist in Ordnung») ist damit eingeschränkt.
- Rechnungen nur als Entwurf, Preise legt der Kunde fest (bei Domi: seine Preiskarte).
- Laufende To-dos stehen in der Drive-Tabelle «To-dos, Kunden und Use Cases», nicht hier.

## Beim Start
- Stand und offene Punkte: `UEBERGABE.md` (Abschnitt 6). Auf dem Tower zusätzlich die Gedächtnisdatei `stand-aktuell`.
- Skills unter `.claude/skills/` (`morgen`, `lernen`, `anfangen`); Hooks erinnern bei Grusswort und Verabschiedung.
- Auf dem Tower läuft dieser Ordner dauerhaft per Remote Control («Tower Zeit sparen»). Vor der Arbeit `git pull`, am Ende committen und pushen.
