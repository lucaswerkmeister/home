# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# start keychain - before sourcing .bashrc
if type keychain &>/dev/null; then
    keychain #id_rsa
    # the created files will be sourced in .bashrc
fi

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists and this shell is interactive
    if [[ -f ~/.bashrc && $- == *i* ]]; then
	source ~/.bashrc
    fi
fi
