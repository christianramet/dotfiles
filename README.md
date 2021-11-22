# Dotfiles management with GNU Stow

This repositires is for managing my various configuration files, using
[Gnu Stow](https://www.gnu.org/software/stow/), a symlink farm manager.

The Makefile will execute GNU Stow with every subdirectory it can find and symlink
them accordingly.

A backup script is provided to ensure that overwritten files are kept in a safe place.
