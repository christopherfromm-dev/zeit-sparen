# Vorlage: Tägliche Sicherung

Vorbild: zwei Sicherungen bei Chris, beide laufen ohne Zutun.

| | Drive-Zip | NAS-Spiegel |
| :- | :- | :- |
| Was | Büro-Daten samt Versionsverlauf (`.git`) und Rechnungs-PDF | ganze Projektordner, Hauptordner, Claude-Benutzerordner |
| Wohin | Google-Drive-Ordner auf dem Rechner, Drive lädt selbst hoch | NAS-Freigabe, Unterordner pro Rechner |
| Wann | beim Start des Büros, einmal am Tag | jeden Abend 21:00, verpasst = beim nächsten Start |
| Wie lange | 30 Zips (`buero-JJJJ-MM-TT.zip`), dann fällt die älteste weg | Spiegel (`/MIR`); Schutz vor Löschen über NAS-Schnappschüsse 30 Tage |
| Vorbild | `buero/werkzeuge/sicherung.ts` | [sicherungsskripte/sicherung-nas.ps1](sicherungsskripte/sicherung-nas.ps1) |

## Regeln

- **Keine Passwörter in der Sicherung.** Die `.env` und `.credentials.json` bleiben draussen.
- **Erst neben dem Ziel packen, dann hinüberlegen.** Schreibt das Packprogramm direkt in den Drive-Ordner, lädt Drive die halbfertige Datei hoch.
- **Eine Sicherung pro Tag genügt.** Läuft sie zweimal, wird die Datei vom Tag überschrieben.
- **Zwei Rechner nie in denselben Spiegelordner.** Sonst löscht der eine, was der andere gesichert hat. Unbekannter Rechner = Abbruch.
- **Meldungen ins Protokoll.** Die Aufgabe läuft unsichtbar, Warnungen sieht sonst niemand. Ein fehlender Ordner bricht nicht ab, er wird gemeldet.
- **Einmal nachzählen.** Nach dem ersten Lauf Dateien im Original und in der Sicherung zählen.
- **Lesefassung dazu.** Neben der Zip ein paar Textdateien («Zum Nachschlagen»: Heute, Kontakte, Termine, Geld), damit man am Handy etwas lesen kann. Lesen ja, ändern nein.

## Fallen, die schon Zeit gekostet haben

| Falle | Regel |
| :- | :- |
| PowerShells `Compress-Archive` lässt versteckte Ordner still weg, also `.git` (24.08.2026 beim Nachzählen aufgefallen) | Mit `tar` packen |
| Das `tar` aus Git hält «C:» für einen fremden Rechner | Windows-eigenes `tar.exe` zuerst, sonst `--force-local` |
| Windows PowerShell 5.1 liest Umlaute falsch | Skript als UTF-8 **mit** BOM speichern |
| Ein Sperrordner verschwand mitten im Lauf, robocopy meldete Fehler | kurzlebige Dateien ausschliessen |
| `node_modules`, Build-Ordner blähen die Sicherung auf | ausschliessen |

## Beim Kunden (Mac)

- **Drive-Zip:** LaunchAgent statt Windows-Aufgabe. Jede Nacht `~/buero` ohne Schlüssel und `.venv` als `buero-JJJJ-MM-TT.zip` in den Drive-Ordner `buero-sicherung`, Zips älter als 30 Tage löschen. Auf dem Mac packt `zip -r` oder `ditto -c -k` auch versteckte Ordner; nachzählen trotzdem.
- **NAS:** Time Machine auf eine eigene NAS-Freigabe mit Grössenlimit. Das ersetzt den robocopy-Spiegel.
- **Bei Domi:** Die Buchungsliste ist eine Google Tabelle, sie hat ihren eigenen Versionsverlauf. Gesichert wird der Büro-Ordner (Regeln, Skills, Texte, Skripte). Zusätzlich einmal pro Woche die Tabelle als Excel-Export ins Zip.
- Einmal von Hand auslösen, nachzählen, Neustart-Test.
