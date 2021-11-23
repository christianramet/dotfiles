umask 0027

export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export NCPATH=$HOME/nextcloud
export INBOX=$NCPATH/inbox
export DIGIDRIVE=$HOME/digidrive

if which emacsclient &> /dev/null; then
    export EDITOR="emacsclient -a ''"
fi

if which go &> /dev/null; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

if which npm &> /dev/null; then
    export PATH=~/.npm-global/bin:$PATH
fi
