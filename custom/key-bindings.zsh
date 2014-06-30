# bindkey -v #Set Vim mode
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
bindkey -M viins '\e' vi-cmd-mode
bindkey -M vicmd v edit-command-line # ESC-v to edit in an external editor.
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
# bindkey -M viins '^I' history-substring-search-up
bindkey -M viins '^E' history-substring-search-down

bindkey -M vicmd 'i' history-substring-search-up
bindkey -M vicmd 'e' history-substring-search-down

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
#bindkey '^T' autosuggest-toggle
bindkey '^f' vi-forward-blank-word
bindkey '^l' vi-end-of-line

stty stop undef
