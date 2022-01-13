#!/bin/bash

GIT_MAIN_DIR=~/git
declare -A REPOS=([emacs-abo-abo]="git@github.com:abo-abo/oremacs.git"
                  [emacs-purcell]="git@github.com:purcell/emacs.d.git"
                  [emacs-jwiegley]="git@github.com:jwiegley/dot-emacs.git")

for i in "${!REPOS[@]}"; do
    echo "Processing $i..."
    if [ -d $GIT_MAIN_DIR/$i ]; then
        cd $GIT_MAIN_DIR/$i && git pull
    else
        git clone --depth 1 ${REPOS[$i]} $GIT_MAIN_DIR/$i
    fi
done
