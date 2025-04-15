export LANG="en_US.UTF-8"

[ -d ~/bin ] && export PATH=$PATH:~/bin
[ -d ~/local/bin ] && export PATH=$PATH:~/.local/bin

export NCPATH=$HOME/Nextcloud
export INBOX=$NCPATH/inbox
export DIGIDRIVE=$HOME/digidrive

if which npm &> /dev/null; then
    export PATH=$PATH:~/.npm-global/bin
fi

if which go &> /dev/null; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi
