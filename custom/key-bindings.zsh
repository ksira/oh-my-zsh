bindkey -v #Set Vim mode
## have movement bound to homerow for colemak 

bindkey -M vicmd o vi-forward-char
bindkey -M vicmd n vi-backward-char
bindkey -M vicmd i up-line-or-history
bindkey -M vicmd e down-line-or-history 
bindkey -M vicmd j vi-forward-word-end
bindkey -M vicmd l vi-open-line-below
bindkey -M vicmd L vi-open-line-above
bindkey -M vicmd j vi-forward-word-end
bindkey -M vicmd k vi-insert
bindkey -M vicmd K vi-insert-bol
bindkey -M vicmd h vi-repeat-search
bindkey -M vicmd H vi-rev-repeat-search
bindkey -M viins ii vi-cmd-mode
bindkey -M vicmd v edit-command-line # ESC-v to edit in an external editor.

stty stop undef
