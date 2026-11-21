# Vorlage: Aufbau der Skills

Vorbild: `.claude/skills/` bei streckenfliegen.com, 18 Skills, Stand 21.11.2026. Chris am 17.11.2026: «ich brauche für alles einen Skill.»

## Warum

Ohne Skill liegen die Learnings verstreut (Gedächtnis, Archiv, Ordner), und nichts zwingt Claude, sie vor der Arbeit zu lesen. Dieselben Fehler kommen wieder, obwohl sie schon korrigiert waren. Ein Skill ist ein Ablauf, der vor der Arbeit geladen wird.

## Aufbau

```
.claude/skills/
  README.md              ← Liste aller Skills + was für alle gilt
  <name>/
    SKILL.md             ← der Ablauf (Kopf mit name + description)
    learnings.md         ← ein Eintrag pro Auftrag, neueste unten
    <helfer>.js|.py      ← nur wenn nötig
```

- **Ein Skill = eine Rolle oder ein wiederkehrender Ablauf**, nicht ein einzelner Auftrag.
- **`description` im Kopf entscheidet, wann der Skill lädt.** Darin die Wörter, die der Kunde wirklich sagt («Änderung», «hat sich geändert», «neue Adresse»).
- **SKILL.md** beginnt mit Herkunft (Datum, Auftrag im Wortlaut), dann «Was es schon gibt», dann der Ablauf in nummerierten Schritten, dann die Regeln.
- **learnings.md** sammelt pro Auftrag: Anlass, was getragen hat, Korrekturen im Wortlaut, eigene Fehler, was in SKILL.md geändert wurde.
- **Jede Korrektur sofort in den Skill**, nicht nur ins Gedächtnis. Ändert ein Learning den Ablauf, wird SKILL.md im selben Zug angepasst und in learnings.md vermerkt («→ Skill, Schritt N»).
- **Aus einem Ablauf, der zweimal getragen hat, wird ein Skill.**

## Was für alle Skills gilt (im README festhalten)

- Nichts geht ohne Ansage raus: keine Mail, kein WhatsApp, keine Rechnung, kein Post. Das Ergebnis ist ein Entwurf.
- Nur ändern, was besprochen ist. Fällt etwas anderes auf: nennen, nicht anfassen.
- Was ich nicht wissen kann, erfinde ich nicht (Preise, Termine, Verfügbarkeit). Lieber eine Zeile Rückfrage.
- Rückfragen als Fliesstext, keine Auswahldialoge.

## Beim Kunden

- Mit **einem** Skill anfangen, dem ersten Werkzeug. Bei Domi: `aenderung` (W5 «Änderung per Zuruf»).
- Die Vorlagen in [skills/](skills/) kopieren nach `~/buero/.claude/skills/`.
- Der Kunde korrigiert per Handy. Jede Korrektur landet in `learnings.md` und, wenn sie den Ablauf ändert, in `SKILL.md`.
