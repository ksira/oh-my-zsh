zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*:match:*' original only
zstyle -e ':completion:*:approximate:*' \
        max-errors 'reply=($((($#PREFIX+$#SUFFIX)/3))numeric)'
#zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list 'r:|[._-]=** r:|=**' 'm:{a-zA-Z}={A-Za-z}' 'l:|=* r:|=*'
zstyle ':completion:*' verbose true
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache 1
zstyle ':completion:*' cache-path /home/twebb/.zsh/cache
zstyle :compinstall filename '/home/twebb/.zshrc'

zstyle ':zle:replace-pattern' edit-previous false
autoload -Uz replace-string
autoload -Uz replace-string-again
zle -N replace-pattern replace-string
zle -N replace-string-again

_ghc() {
    compadd `ghc --show-options | awk '{ print "\"", $1, "\"" }'`
}
compdef _ghc ghc
compdef manage.py

AUTOSUGGESTION_HIGHLIGHT_COLOR='fg=magenta'
AUTOSUGGESTION_HIGHLIGHT_CURSOR=1

# Enable autosuggestions automatically
#zle-line-init() {
#    zle autosuggest-start
#}
zle -N zle-line-init
