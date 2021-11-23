HISTSIZE=1000
HISTFILESIZE=50000

source ~/.profile

if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

if [ -e $HOME/.bash_aliases ]; then
    source $HOME/.bash_aliases
fi

if which setxkbmap &> /dev/null; then
    setxkbmap -layout us -variant altgr-intl -option ctrl:nocaps
fi

# Vterm config
# https://github.com/akermu/emacs-libvterm
vterm_printf(){
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

vterm_prompt_end(){
    vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
}
PS1=$PS1'\[$(vterm_prompt_end)\]'

# Define KUBECONFIG file
# https://www.mankier.com/1/kubectl-config
function kubectl-env() {
  CFG=${1:-~/.kube/config}
  echo $CFG
  export KUBECONFIG=$CFG
}

# Use Git’s colored diff when available
if type git &>/dev/null ; then
  function diff() {
    git diff --no-index --color-words "$@";
  }
fi

# Simple http-server, requires npm with http-server
if which http-server &> /dev/null; then
    function server() {
        local port="${1:-8000}";
        sleep 1 && open "http://localhost:${port}/" &
        http-server -p $port
    }
fi
