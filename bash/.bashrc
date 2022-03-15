export LANG="en_US.UTF-8"

[ -e /etc/bashrc ] && source /etc/bashrc
[ -e ~/.profile ] && source ~/.profile
[ -e ~/.aliases ] && source ~/.aliases
[ -e ~/.functions ] && source ~/.functions
[ -d ~/bin ] && export PATH=$PATH:~/bin

export HISTSIZE=10000
export HISTFILESIZE=50000

export NCPATH=$HOME/Nextcloud
export INBOX=$NCPATH/inbox
export DIGIDRIVE=$HOME/digidrive

# if which emacsclient &> /dev/null; then
#     export EDITOR="emacsclient -a ''"
# fi

if which go &> /dev/null; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

if which npm &> /dev/null; then
    export PATH=$PATH:~/.npm-global/bin
fi

### Vterm integration (requires vterm_printf function)
vterm_prompt_end(){
    vterm_printf "51;A$(whoami)@$(hostname):$(pwd)"
}
PS1=$PS1'\[$(vterm_prompt_end)\]'
