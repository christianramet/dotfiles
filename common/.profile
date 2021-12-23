umask 0027

export LANG="en_US.UTF-8"

export HISTSIZE=10000
export HISTFILESIZE=50000

export PATH=$PATH:/usr/local/sbin:$HOME/bin:$HOME/.local/bin
export NCPATH=$HOME/Nextcloud
export INBOX=$NCPATH/inbox
export DIGIDRIVE=$HOME/digidrive

if which emacsclient &> /dev/null; then
    export EDITOR="emacsclient -a ''"
fi

if [[ $(uname) == "Darwin" ]]; then
    export DICPATH="$HOME/Library/Spelling"
fi

if which go &> /dev/null; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

if which npm &> /dev/null; then
    export PATH=$PATH:~/.npm-global/bin
fi
