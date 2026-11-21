# Vorlage: Sicherung Rechner -> NAS (Windows)
# Aus Chris' Büro (scripts/sicherung-nas.ps1, Stand 21.11.2026), Adressen,
# Rechnernamen und Pfade durch Platzhalter <...> ersetzt. Vor dem Einsatz
# ausfüllen und als UTF-8 MIT BOM speichern, sonst liest Windows PowerShell 5.1
# die Umlaute falsch. Für den Mac gilt das nicht: dort Time Machine aufs NAS
# (siehe ../taegliche-sicherung.md).
#
#   powershell.exe -File sicherung-nas.ps1 -Ziel \\<NAS-Adresse>\<Freigabe> -Probe
#       zeigt nur, was kopiert würde (robocopy /L), schreibt nichts.
#   powershell.exe -File sicherung-nas.ps1 -Ziel \\<NAS-Adresse>\<Freigabe>
#       kopiert wirklich.
#
# Der Zielordner hängt vom Rechner ab. Grundregel: zwei Rechner nie mit /MIR in
# denselben Ordner, sonst löscht der eine, was der andere gesichert hat. Ein
# unbekannter Rechner bricht ab, ausser man gibt -Unterordner ausdrücklich mit.
#
# Gespiegelt wird mit /MIR: Was auf diesem Rechner gelöscht ist, verschwindet
# auch in seiner Sicherung. Gegen versehentliches Löschen schützen die
# Schnappschüsse des NAS (30 Tage einstellen), nicht dieses Skript.

param(
  [Parameter(Mandatory)] [string] $Ziel,
  [string] $Unterordner,
  [switch] $Probe
)

if (-not $Unterordner) {
  if ($env:COMPUTERNAME -eq '<RECHNERNAME-1>') { $Unterordner = '<rechner-1>' }
  elseif ($env:COMPUTERNAME -eq '<RECHNERNAME-2>') { $Unterordner = '<rechner-2>' }
  else {
    Write-Error "Unbekannter Rechner $env:COMPUTERNAME ($env:USERNAME): -Unterordner angeben, nie den Ordner eines anderen Rechners."
    exit 1
  }
}

$projekte = '<Pfad zum Projekte-Ordner>'
$ordner = @(
  '<projekt-1>',
  '<projekt-2>'
)
# Build-Ordner und Sperrdateien, die nur Sekunden leben. Verschwindet so eine
# Datei mitten im Lauf, meldet robocopy Code 9 (Fehler).
$auslassen = @('node_modules', 'dist', '.astro', '.gebaut', '.venv', 'sync-push.lock')

if (-not (Test-Path $Ziel)) { Write-Error "NAS nicht erreichbar: $Ziel"; exit 1 }

$zielRechner = Join-Path $Ziel $Unterordner
$protokoll = Join-Path $zielRechner "protokoll-$(Get-Date -Format yyyy-MM-dd).txt"
New-Item -ItemType Directory -Force $zielRechner | Out-Null

# Meldungen auch ins Protokoll, weil die Aufgabe unsichtbar läuft und Warnungen
# sonst niemand sieht.
function Melde([string] $text, [switch] $Warnung) {
  if ($Warnung) { Write-Warning $text } else { Write-Output $text }
  try { Add-Content -Path $protokoll -Value "[sicherung-nas $(Get-Date -Format HH:mm:ss)] $(if ($Warnung) { 'WARNUNG: ' })$text" -Encoding Default } catch {}
}

Melde "Start auf $env:COMPUTERNAME ($env:USERNAME) -> $zielRechner$(if ($Probe) { ' (nur Probe)' })"

$fehler = 0

foreach ($o in $ordner) {
  $quelle = Join-Path $projekte $o
  # Ein fehlender Ordner bricht nicht ab, er wird gemeldet.
  if (-not (Test-Path $quelle)) { Melde -Warnung "fehlt: $quelle"; continue }
  $rcArgs = @($quelle, (Join-Path $zielRechner $o), '/MIR', '/R:2', '/W:5', '/NP', '/XD') + $auslassen + @("/LOG+:$protokoll")
  if ($Probe) { $rcArgs += '/L' }
  robocopy @rcArgs | Out-Null
  # robocopy: 0 bis 7 heisst gut, ab 8 ist etwas schiefgegangen
  if ($LASTEXITCODE -ge 8) { $fehler++; Melde -Warnung "Fehler bei $o (Code $LASTEXITCODE)" }
  else { Melde "ok: $o" }
}

# Claudes Benutzerordner: Gedächtnis, Gesprächsverläufe, Skills, Einstellungen.
# OHNE Anmeldedaten (.credentials.json) und ohne Zwischenablagen, die Claude bei
# jedem Start neu anlegt. ~/.claude.json geht einzeln in einen eigenen Ordner,
# damit /MIR oben ihn nicht wegräumt.
$claude = Join-Path $env:USERPROFILE '.claude'
if (Test-Path $claude) {
  $wegwerf = @('file-history', 'shell-snapshots', 'session-env', 'sessions', 'debug', 'cache', 'telemetry', 'ide', 'statsig', 'todos')
  $rcArgs = @($claude, (Join-Path $zielRechner 'claude-benutzerordner'), '/MIR', '/R:2', '/W:5', '/NP', '/XF', '.credentials.json', '/XD') + $wegwerf + @("/LOG+:$protokoll")
  if ($Probe) { $rcArgs += '/L' }
  robocopy @rcArgs | Out-Null
  if ($LASTEXITCODE -ge 8) { $fehler++; Melde -Warnung "Fehler bei $claude (Code $LASTEXITCODE)" }
  else { Melde "ok: $claude" }

  $rcArgs = @($env:USERPROFILE, (Join-Path $zielRechner 'claude-einstellungen'), '.claude.json', '/R:2', '/W:5', '/NP', "/LOG+:$protokoll")
  if ($Probe) { $rcArgs += '/L' }
  robocopy @rcArgs | Out-Null
  if ($LASTEXITCODE -ge 8) { $fehler++; Melde -Warnung "Fehler bei .claude.json (Code $LASTEXITCODE)" }
  else { Melde "ok: .claude.json" }
}

if ($fehler) { Melde -Warnung "Sicherung mit $fehler Fehler(n) beendet. Protokoll: $protokoll"; exit 1 }
Melde "Sicherung fertig$(if ($Probe) { ' (nur Probe)' }). Protokoll: $protokoll"
