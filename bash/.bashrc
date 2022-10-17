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

if which go &> /dev/null; then
    export GOPATH=$HOME/go
    export PATH=$PATH:$GOPATH/bin
fi

if which npm &> /dev/null; then
    export PATH=$PATH:~/.npm-global/bin
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
