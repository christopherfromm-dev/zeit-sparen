# Startpaket für Domis Claude

Stand 22.11.2026. Zusammengestellt von Chris' Claude aus dem ersten Arbeitstag bei Domi. Dieses Paket macht aus einem leeren Claude Code auf Domis Mac ein Büro, das die Agentur, die Entscheide und die Arbeitsweise schon kennt.

## Was im Paket liegt

| Datei oder Ordner | Was es ist |
| :- | :- |
| `CLAUDE.md` | Die Regeln. Claude liest sie bei jedem Start von selbst |
| `.claude/skills/` | Fünf fertige Abläufe: `morgen`, `lernen`, `anfangen`, `kundentext`, `schleifstein` |
| `.claude/settings.json`, `.claude/scripts/` | Zwei Erinnerungen: beim «Guten Morgen» den Stand holen, beim «Gute Nacht» den Stand sichern |
| `wissen/stand.md` | Wo wir stehen und womit es weitergeht |
| `wissen/zusammenfassung-2026-11-22.md` | Der erste Tag in Stichpunkten |
| `wissen/ist-ablauf.md` | Der Ablauf von der Anfrage bis zur Buchung, an einer Testanfrage gestoppt |
| `wissen/preiskarte.md` | Domis Preise nach Stadt und Gegend. Von Domi noch gegenzulesen |
| `wissen/textbausteine.md`, `wissen/sprachnachrichten.md` | Domis Texte und die vier Sprachnachrichten im Wortlaut |
| `wissen/whatsapp-regeln.md` | Was WhatsApp erlaubt und verbietet, wörtlich, mit Links |
| `wissen/fahrplan.md` | Alle To-dos nach den vier Säulen, Abzug der Drive-Listen |

## So kommt das Paket auf den Mac

Voraussetzung: Claude Code ist installiert (Anleitung: `mac-einrichtung.md` im Projekt von Chris, Abschnitt 2).

1. Auf dem Mac den Ordner `buero` im Benutzerordner anlegen, falls es ihn noch nicht gibt.
2. Den ganzen Inhalt dieses Startpakets hineinkopieren, auch den Ordner `.claude`. Er beginnt mit einem Punkt und ist im Finder unsichtbar; mit `Cmd + Shift + .` wird er sichtbar.
3. Im Terminal:

   ```bash
   cd ~/buero && chmod +x .claude/scripts/*.sh && claude
   ```

4. Claude fragt, ob es dem Ordner vertrauen darf. Ja.
5. Erste Nachricht an Claude: «Lies CLAUDE.md und wissen/stand.md und sag mir in fünf Zeilen, wo wir stehen.»

Stimmt die Antwort mit dem überein, was Domi vom 22.11. weiß, ist das Büro bereit.

## Wie die Konten geordnet sind

Stand 22.11.2026: **Vorerst arbeiten Chris und Domi in einem gemeinsamen Drive-Ordner.** Sonst kann Chris nicht unterstützen.

1. **Der gemeinsame Drive-Ordner «Zeit sparen – Chris & Domi», Unterordner «Limited Strip».** Hier liegt alles zum Projekt: die zwei To-do-Listen, Pläne, Anleitungen und vorerst auch die Arbeitsdaten wie die Tabelle «Anfragen». Chris arbeitet hier als Berater mit und sieht damit auch Kundendaten.
2. **Der Mac mit NAS und Tailscale.** Hier läuft Claude Code im Ordner `buero`. Domi erreicht ihn vom Handy über Remote Control. Das NAS sichert den Ordner.

Wichtig beim Anlegen: Tabellen und Programme mit Kundendaten legt **Domi mit seinem eigenen Google-Konto** an und teilt sie mit Chris. Dann gehören sie Domi. Will er Chris später heraushalten, entzieht er die Freigabe, und nichts muss umziehen.

Später kommt ein eigener Bereich nur für Domi dazu. Das steht im Fahrplan als A1.

## Woher die Arbeitsweise kommt

Die Regeln und Skills stammen aus Chris' eigenen Projekten, in denen er seit Monaten täglich mit Claude arbeitet. Übernommen ist die Arbeitsweise: nichts geht ohne Ansage raus, erst Bestandsaufnahme und dann Lösung, den schlechtesten Fall früh nennen, Gelerntes sofort festhalten. Nicht übernommen sind Chris' Schreibstil, seine Kunden und sein Gedächtnis. Den Ton für Domis Kunden holt Claude aus Domis eigenen Texten.

Domi wird die Regeln mit der Zeit zu seinen machen. Jede Korrektur («so nicht», «merk dir das») landet über den Skill `lernen` in `CLAUDE.md` oder im passenden Skill. So wird das Büro mit jedem Gespräch besser.

## Was als Nächstes gebaut wird

Steht in `wissen/stand.md` und im Fahrplan. In einem Satz: Kommt ein Anfrageformular herein, bereitet ein kleines Programm in Domis Google-Konto die Rückfrage vor, und Domi schickt sie mit einem Tipp.
