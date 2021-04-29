# Bash files

~/.profile is the place to put stuff that applies to your whole session, such as programs that you want to start when you log in (but not graphical programs, they go into a different file), and environment variable definitions.

~/.bashrc is the place to put stuff that applies only to bash itself, such as alias and function definitions, shell options, and prompt settings. (You could also put key bindings there, but for bash they normally go into ~/.inputrc.)

~/.bash_profile can be used instead of ~/.profile, but it is read by bash only, not by any other shell. (This is mostly a concern if you want your initialization files to work on multiple machines and your login shell isn't bash on all of them.) This is a logical place to include ~/.bashrc if the shell is interactive.

Source: https://superuser.com/questions/183870/difference-between-bashrc-and-bash-profile/183980
