export LANG="en_US.UTF-8"
export PATH="/usr/local/sbin:$PATH"

if [[ $(uname) == "Darwin" ]]; then
    export DICPATH="$HOME/Library/Spelling"
fi
