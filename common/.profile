umask 0027

HISTSIZE=10000
HISTFILESIZE=50000

export LANG="en_US.UTF-8"
export PATH=$PATH:/usr/local/sbin:$HOME/.local/bin:$HOME/bin
export NCPATH=$HOME/Nextcloud
export INBOX=$NCPATH/inbox
export DIGIDRIVE=$HOME/digidrive

if [[ $(uname) == "Darwin" ]]; then
    export DICPATH="$HOME/Library/Spelling"
fi

if which emacsclient &> /dev/null; then
    export EDITOR="emacsclient -a ''"
fi

if which go &> /dev/null; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

if which npm &> /dev/null; then
    export PATH=$PATH:~/.npm-global/bin
fi
