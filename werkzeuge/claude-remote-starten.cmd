@echo off
rem Startet «claude remote-control» fuer das Projekt Zeit sparen auf dem Tower
rem und haelt es am Laufen. Liegt als Verknuepfung im Autostart (shell:startup):
rem «Claude Remote Tower Zeit sparen.lnk».
rem
rem WARUM EIN EIGENES SKRIPT (25.11.2026). Bis dahin lief Zeit sparen ueber das
rem Skript aus dem streckenfliegen-Repo. Der Prozess lief, die Umgebung stand
rem in der Claude-App aber nur als «offline». In einem Git-Ordner fragt
rem remote-control beim Start im Fenster nach (same-dir oder worktree) und
rem wartet dann unsichtbar. Mit --spawn same-dir gibt es keine Rueckfrage.
rem Das Projekt soll ausserdem nicht am streckenfliegen-Repo haengen.
rem Protokoll: %TEMP%\claude-remote-Tower Zeit sparen.log
cd /d "%~dp0.." || exit /b 1
title Claude Remote Tower Zeit sparen (nicht schliessen)
set "LOG=%TEMP%\claude-remote-Tower Zeit sparen.log"
set "CLAUDE=%LOCALAPPDATA%\Microsoft\WinGet\Packages\Anthropic.ClaudeCode_Microsoft.Winget.Source_8wekyb3d8bbwe\claude.exe"
if not exist "%CLAUDE%" set "CLAUDE=claude"
:start
echo ---- Start %DATE% %TIME% ---- >> "%LOG%"
"%CLAUDE%" remote-control --name "Tower Zeit sparen" --spawn same-dir
echo ---- Beendet %DATE% %TIME% (Code %ERRORLEVEL%), neuer Versuch in 60 Sekunden ---- >> "%LOG%"
timeout /t 60 /nobreak > nul
goto start
