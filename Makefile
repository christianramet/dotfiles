verbose = 2
all_items = $(shell ls -d */ | cut -f1 -d'/')

UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	items =	bash recoll ssh tmux
endif
ifeq ($(UNAME_S),Darwin)
	items = ssh tmux
endif

all: backup install

install:
	stow --no-folding --verbose=$(verbose) $(items)

backup:
	./dotfiles-backup.sh $(items)

remove:
	stow -D --verbose=$(verbose) $(items)
