alias iwscan="iwlist wlan0 scan"
alias less="most"
alias zless="most"
alias gcli="/usr/bin/google"
alias gcal="/usr/bin/google calendar"
alias tmux='tmux -2' #start tmux in 256 colors
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias jo=jobs
alias -g is="ls"
if ls -F --color=auto >&/dev/null; then
	alias ls="ls --color=auto -F"
else
	alias ls="ls -F"
fi
#pager()  {page="$1"; vim -c ":Man $page";}  
#alias man=pager # View man pages in vim
alias it="ls -ltr"
alias ir="ls -lh"
alias ia='ls -d .[^.]*'
alias isd='ls -ld *(-/DN)'
alias md='mkdir -p'
alias rd='rmdir'
alias ..='..'
alias ...=' ../..'
alias ....='../../..'
alias .....='../../../..'
alias ......='../../../../..'
alias po='popd'
alias pu='pushd'
alias tsl="tail -f /var/log/syslog"
alias df="df -hT"
alias vi="vim"
alias unipref="vi .unison/default.prf"
alias netstart='sudo /etc/rc.d/network restart'
alias -s com=firefox
alias -s net=firefox
alias -s uk=firefox
#alias -s pdf=mupdf
alias -s avi=mplayer
alias -s mp3=mplayer
alias -s conf=vim
alias -g ND='$(ls -d *(/om[1]))' # newest directory
alias -g NF='$(ls *(.om[1]))'    # newest file
alias dush="du -sm *|sort -n|tail"
alias tk="task"
alias tkn="task next"
alias tkl="task list"
alias tka="task add"
alias tkd="task done"
alias tkah="task add pri:H"
alias tkam="task add pri:M"
alias tkal="task add pri:L"
alias -g td="due:today"
alias netcfg="sudo rm /var/lib/dhcpcd/dhcpcd-wlan0.lease ; sudo netcfg"
alias ohmyalias="vim ~/.oh-my-zsh/custom/alias.zsh"
alias ohmyenv="vim ~/.oh-my-zsh/custom/environment.zsh"
alias e="/usr/bin/vim"
alias se="sudo /usr/bin/vim"
alias -g packit="sudo pacman -U *z"
goto() { [ -d "$1" ] && cd "$1" || cd "$(dirname "$1")"; }
cpf() { cp "$@" && goto "$_"; }
mvf() { mv "$@" && goto "$_"; }
function md {
    mkdir -p "$@" ; echo "$1" && cd "$1"
}
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias coma='more ~/.oh-my-zsh/custom/alias.zsh| $(grep alias)'
alias subtle_config='vim ~/.config/subtle/subtle.rb'
alias gdl='cd /home/opt/dl/'
alias gmedia='cd /home/opt/media/'

alias windoze='qemu-kvm -hda /home/twebb/virtual-disks/win.qcow -m 512 -enable-kvm'
alias babynames='vim /home/twebb/documents/viki/Baby\ Names.viki'

alias buildtz='cd ~/www/tz/build/ && ant build && po'
alias buildtz='cd ~/www/tz/build/ && ant build && po'
alias pubtz='rsync -avz -e "ssh -i /home/twebb/.ssh/krisna_www_rsa" --include-from=/home/twebb/www/tz/.publish_files /home/twebb/www/tz/* www-data@krisna:~/html/'
alias pubtptz='rsync -avz -e "ssh -i /home/twebb/.ssh/krisna_www_rsa" /home/twebb/www/templates/ www-data@krisna:~/templates/'
alias pubdjtz='rsync -avz -e "ssh -i /home/twebb/.ssh/krisna_www_rsa" /home/twebb/src/django/tz/ www-data@krisna:~/tz/'
alias dlast='exec $(ls -1tr ~/dl/ | tail -n 1)'
alias indentpro='indent -nut -bap -bacc -bad -nbc -bli0 -nbs -ncdb -nce -ci4 -cli0 -d0 -di1 -fca -nfc1 -i004 -nip -l79 -nlp -npcs -npsl -sob -nsc -c33 -lc79'
alias dc="git --git-dir=./.dotfiles/.git --work-tree=$HOME"
function dca {
    git --git-dir=./.dotfiles/.git --work-tree="$HOME" add "$1"
}
