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

# Define kubectl configuration file
function cr-kubectl-env() {
  CFG=${1:-~/.kube/config}
  echo $CFG
  export KUBECONFIG=$CFG
}

# Define Docker configuration file
function cr-docker-env() {
  CFG=${1:-~/.docker/config.json}
  echo $CFG
  export REGISTRY_AUTH_FILE=$CFG
}

# Simple http-server, requires npm with http-server
if which http-server &> /dev/null; then
    function server() {
        local port="${1:-8000}";
        sleep 1 && xdg-open "http://localhost:${port}/" &
        http-server -p $port
    }
fi
