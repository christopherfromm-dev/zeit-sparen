# Vorlage: legt in Windows die tägliche Sicherung aufs NAS an (21:00, verpasst =
# beim nächsten Start). Aus Chris' Büro (scripts/sicherung-zeitplan-anlegen.ps1,
# Stand 21.11.2026), Adresse durch Platzhalter ersetzt. Als UTF-8 MIT BOM speichern.
# Einmal auf dem Rechner selbst ausführen:
#
#   powershell.exe -NoProfile -ExecutionPolicy Bypass -File sicherung-zeitplan-anlegen.ps1 -Ziel \\<NAS-Adresse>\<Freigabe>
#
# Die Aufgabe läuft unsichtbar über conhost --headless mit Windows PowerShell 5.1.
# Ändert sich die Adresse des NAS, mit -Ziel neu ausführen; der alte Eintrag wird
# ersetzt. Auf dem Mac stattdessen ein LaunchAgent bzw. Time Machine.

param([Parameter(Mandatory)] [string] $Ziel)

$skript = Join-Path $PSScriptRoot 'sicherung-nas.ps1'
$aktion = New-ScheduledTaskAction -Execute 'conhost.exe' -Argument "--headless powershell.exe -NoProfile -ExecutionPolicy Bypass -File `"$skript`" -Ziel $Ziel"
$wann = New-ScheduledTaskTrigger -Daily -At 21:00
$regeln = New-ScheduledTaskSettingsSet -StartWhenAvailable -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries -ExecutionTimeLimit (New-TimeSpan -Hours 3) -MultipleInstances IgnoreNew

Register-ScheduledTask -TaskName 'Sicherung NAS (<Büro-Name>)' -Action $aktion -Trigger $wann -Settings $regeln -Force `
  -Description 'Jeden Abend 21:00 Projekte und Claude-Ordner aufs NAS.' |
  Select-Object TaskName, State
