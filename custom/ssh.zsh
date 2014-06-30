SSH_ENV="$HOME/.ssh/environment"

function start_agent {
     echo "Initialising new SSH agent..."
     /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
     echo succeeded
     chmod 600 "${SSH_ENV}"
     . "${SSH_ENV}" > /dev/null
     /usr/bin/ssh-add;
}

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     #ps ${SSH_AGENT_PID} doesn't work under cywgin
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
         start_agent;
     }
else
     start_agent;
fi 

function load_csc_key {
export CSC_KEY="/tmp/csc_key_lock"

if [ ! -f "${CSC_KEY}" ]; then
  touch $CSC_KEY
  ssh-add ~/.ssh/id_rsa_4096
fi
}

alias rome="load_csc_key && ssh  -X -C -c blowfish phrgai@rome.csc.warwick.ac.uk"
alias godzilla="load_csc_key && ssh  -X -C -c blowfish phrgai@godzilla.csc.warwick.ac.uk"
alias fran="load_csc_key && ssh  -X -C -c blowfish phrgai@francesca.csc.warwick.ac.uk"
