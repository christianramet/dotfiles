verbose = 2
all_items = $(shell ls -d */ | cut -f1 -d'/')

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	items =	bin common bash recoll ssh tmux
endif
ifeq ($(UNAME_S),Darwin)
	items = bin common ssh tmux zsh
endif

all: backup install

install:
	stow --no-folding --verbose=$(verbose) $(items)

backup:
	./dotfiles-backup.sh $(items)

remove:
	stow -D --verbose=$(verbose) $(items)
