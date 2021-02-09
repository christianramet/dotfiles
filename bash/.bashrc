umask 0027
HISTFILESIZE=10000

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -e $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

# Exports
export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export EDITOR="emacsclient -a ''"
export GOPATH=$HOME/go

# Misc
setxkbmap -layout us -variant altgr-intl -option ctrl:nocaps

# Vterm PS for directory tracking (libvterm)
vterm_printf(){
    if [ -n "$TMUX" ]; then
        # Tell tmux to pass the escape sequences through
        # (Source: http://permalink.gmane.org/gmane.comp.terminal-emulators.tmux.user/1324)
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
