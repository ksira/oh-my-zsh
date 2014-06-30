# Begin Enviromnent
export EDITOR="vim"
export PAGER="most"
export BROWSER="firefox"
export SHELL="zsh"
export MAILCONF="/home/twebb/.config/mail/"
export PATH=/opt:/usr/local/bin:/home/twebb/bin:/usr/lib/surfraw:$PATH
export MONTHLYDOC=~/documents/$(ls ~/documents -1t | head -n1)/ 
export CDPATH=:..:~/:$MONTHLYDOC:$MONTHLYDATA:~/src
export BOOST_BUILD_PATH="/usr/share/boost-build/"
export DIRSTACKSIZE=16
export TERM=rxvt-256color

export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv2
source /usr/bin/virtualenvwrapper.sh
# End Evironment
