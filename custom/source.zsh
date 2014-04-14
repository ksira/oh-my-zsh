eval "$(fasd --init auto)"

bindkey -v '^X^A' fasd-complete    # C-x C-a to do fasd-complete (fils and directories)
bindkey -v '^X^F' fasd-complete-f  # C-x C-f to do fasd-complete-f (only files)
bindkey -v '^X^D' fasd-complete-d  # C-x C-d to do fasd-complete-d (only directories)
alias a='fasd -a' # any
alias s='fasd -s' # show / search / select
alias d='fasd -d' # directory
alias f='fasd -f' # file
alias j='fasd_cd -d' # cd, same functionality as j in autojump
alias v='f -t -e vim -b viminfo'
alias o='a -e xdg-open'

source /etc/profile

stty stop undef
