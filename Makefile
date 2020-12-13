items = $(shell ls -d */ | cut -f1 -d'/')
verbose = 2

all: backup install

install:
	stow --no-folding --verbose=$(verbose) $(items)

backup:
	./dotfiles-backup.sh $(items)

remove:
	stow -D --verbose=$(verbose) $(items)
