# ~/.bash_aliases

alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'
alias dd-watch="watch -n5 'sudo kill -USR1 $(pgrep ^dd)'"
alias digs="dig $* +short"
alias ec="emacsclient -a '' $1"
alias freebox-tv="vlc http://mafreebox.freebox.fr/freeboxtv/playlist.m3u"
alias magit="emacsclient -n -e \(magit-status\)"
alias reverse-tunnel-setup="ssh -R 10022:localhost:22 cr-bastion"
alias reverse-tunnel-use="ssh -J cr-bastion localhost -p 10022"
alias youtube-mp3="youtube-dl --extract-audio --audio-format mp3 --embed-thumbnail --restrict-filenames --output '$INBOX/%(title)s.%(ext)s'"
alias loc="git ls-files | xargs wc -l | sort"
alias provision="curl -s https://raw.githubusercontent.com/christianramet/fedora-provisioning/master/bootstrap.sh | bash -s $*"
alias rclone-up='rclone copy -i digidrive:main $DIGIDRIVE -v'
alias rclone-down='rclone copy -i $DIGIDRIVE digidrive:main -v'
