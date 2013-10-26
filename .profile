# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [[ -z "$TMUX" ]]; then
    SESSION="$(whoami)-$(basename $(tty))";
    # Start tmux server if it isn't already running
    echo "Starting tmux server..."
    /usr/bin/tmux start-server 2> /dev/null;
    echo "tmux server started."
    echo "Preparing session counter..."
    if [[ ! -e "/tmp/.tmux-names/$SESSION" ]]; then 
        mkdir -p /tmp/.tmux-names;
    fi
    echo 1 > "/tmp/.tmux-names/$SESSION";
    echo "Session counter prepared."
    echo "Running fbterm..."
    fbterm -- /bin/sh ~/bin/fbterm-tmux-bash $SESSION;
fi
