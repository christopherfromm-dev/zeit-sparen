#!/usr/bin/env bash
# UserPromptSubmit-Hook: Wenn Chris sich verabschiedet oder «merken» sagt,
# erinnert dieser Hook daran, den Skill «lernen» zu laden, bevor geantwortet
# wird. Sein Wunsch vom 06.10.2026: Learnings automatisch bei allen Chats
# mitziehen. Liest die Eingabe (JSON mit "prompt") von stdin, gibt bei Treffer
# einen Hinweis aus, der dem Modell als Kontext mitgegeben wird. Sonst still.
eingabe=$(cat)
if printf '%s' "$eingabe" | grep -qiE 'merk(e|en|t)|gute nacht|schliess(e|en) .*(chat|hier)|mach(e)? schluss|bin durch|das wars|danke.*(nacht|schluss|bis morgen)|bis morgen|chat (zu|schliessen)'; then
  echo "Hinweis vom Hook lernen-erinnerung: Chris verabschiedet sich oder sagt «merken». Vor der Antwort den Skill «lernen» laden und die Learnings dieses Chats mitziehen (Memory, VOICE, Regel-Sammlungen, Skills, stand-aktuell)."
fi
exit 0
