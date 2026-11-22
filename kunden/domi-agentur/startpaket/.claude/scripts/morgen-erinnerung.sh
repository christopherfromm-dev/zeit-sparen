#!/usr/bin/env bash
# UserPromptSubmit-Hook: erkennt den Morgen und erinnert an den Skill «morgen».
# Merkt sich die Zeit der letzten Nachricht in einer Datei neben dem Skript.
eingabe=$(cat)
dir=$(dirname "$0")
marke="$dir/.letzte-nachricht"
jetzt=$(date +%s)
pause=0
if [ -f "$marke" ]; then
  letzte=$(cat "$marke" 2>/dev/null || echo 0)
  pause=$(( jetzt - letzte ))
fi
echo "$jetzt" > "$marke"
grund=""
if printf '%s' "$eingabe" | grep -qiE 'guten morgen|moin|los ?geht|"go"|fangen wir an|lass uns (an|los)|start(en)? wir'; then
  grund="Grusswort"
elif [ "$pause" -gt 28800 ]; then
  grund="mehr als acht Stunden Pause ($(( pause / 3600 )) h)"
fi
if [ -n "$grund" ]; then
  echo "Hinweis vom Hook morgen-erinnerung ($grund): Jetzt den Skill «morgen» laden und den Morgen-Durchlauf machen: Stand holen, offene Anfragen, To-dos, dann ein erster Schritt und eine Frage. Erst danach auf die Nachricht eingehen."
fi
exit 0
