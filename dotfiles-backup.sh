#!/bin/bash

DOTFILES_PATH=$(pwd)
BACKUP_DIR=$HOME/.dotfiles-backup
PACKAGES=$@

if [ $# -eq 0 ]; then
    echo "No arguments supplied. Usage: scriptname package ..."
    exit 1
fi

cd $DOTFILES_PATH

for PKG in ${PACKAGES[@]}; do
    CONFLICTS=$(stow -d $DOTFILES_PATH --no --verbose $PKG 2>&1 | awk '/\* existing target is/ {print $NF}')
    for FILENAME in ${CONFLICTS[@]}; do
	if [[ -f $HOME/$FILENAME ]]; then
	    echo "Backing up $FILENAME"
            mkdir -p $BACKUP_DIR
	    mv -v "$HOME/$FILENAME" $BACKUP_DIR/$FILENAME$(date +%Y-%m-%d-%H%M)
	fi
    done
done
