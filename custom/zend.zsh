zstyle ':zle:replace-pattern' edit-previous false
autoload -Uz replace-string
autoload -Uz replace-string-again
zle -N replace-pattern replace-string
zle -N replace-string-again
bindkey -M vicmd v edit-command-line # ESC-v to edit in an external editor.
