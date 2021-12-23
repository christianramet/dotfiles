export LANG="en_US.UTF-8"

[ -e ~/.aliases ] && source ~/.aliases
[ -e ~/.functions ] && source ~/.functions
[ -e /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"

export HISTSIZE=10000
export HISTFILESIZE=50000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

export NCPATH=$HOME/Nextcloud
export INBOX=$NCPATH/inbox
export DIGIDRIVE=$HOME/digidrive

if which emacsclient &> /dev/null; then
    export EDITOR="emacsclient -a ''"
fi

### Vterm integration (requires vterm_printf function)
vterm_prompt_end() {
    vterm_printf "51;A$(whoami)@$(hostname):$(pwd)";
}
setopt PROMPT_SUBST
PROMPT=$PROMPT'%{$(vterm_prompt_end)%}'
