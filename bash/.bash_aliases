# ~/.bash_aliases

alias dd-watch="watch -n5 'sudo kill -USR1 $(pgrep ^dd)'"
alias digs="dig $* +short"
alias ec="emacsclient -a '' $1"
alias freebox-tv="vlc http://mafreebox.freebox.fr/freeboxtv/playlist.m3u"
alias magit="emacsclient -n -e \(magit-status\)"
alias reverse-tunnel-setup="ssh -R 10022:localhost:22 cr-bastion"
alias reverse-tunnel-use="ssh -J cr-bastion localhost -p 10022"
alias ta="tmux attach"
alias tn="tmux new-session"
alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3 $1"
alias e="emacsclient -nw"