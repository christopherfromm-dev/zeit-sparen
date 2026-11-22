#!/usr/bin/env bash
# UserPromptSubmit-Hook: Wenn Domi sich verabschiedet oder «merken» sagt,
# erinnert dieser Hook daran, den Skill «lernen» zu laden, bevor geantwortet
# wird. Liest die Eingabe (JSON mit "prompt") von stdin, gibt bei Treffer
# einen Hinweis aus, der dem Modell als Kontext mitgegeben wird. Sonst still.
eingabe=$(cat)
if printf '%s' "$eingabe" | grep -qiE 'merk(e|en|t)|gute nacht|schliess(e|en) .*(chat|hier)|mach(e)? schluss|bin durch|das wars|danke.*(nacht|schluss|bis morgen)|bis morgen|chat (zu|schliessen)'; then
  echo "Hinweis vom Hook lernen-erinnerung: Domi verabschiedet sich oder sagt «merken». Vor der Antwort den Skill «lernen» laden und die Learnings dieses Chats mitziehen (CLAUDE.md, Skills, wissen/stand.md)."
fi
exit 0
