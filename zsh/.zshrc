[ -e ~/.aliases ] && source ~/.aliases
[ -e ~/.functions ] && source ~/.functions

export HISTSIZE=10000
export HISTFILESIZE=50000
setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY

# if which emacsclient &> /dev/null; then
#     export EDITOR="emacsclient -a ''"
# fi
