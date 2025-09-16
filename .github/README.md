# home

This is the git repository for my home directory,
which I use on most of my own systems,
as well as some systems that aren’t mine but that I have a separate user account on.
It contains default configuration for many programs and some shell utilities.

## `.bashrc.d`

The `.bashrc.d` directory contains Bash initialization snippets:
environment adjustments, `source` directives, and shell functions and aliases.
Some of the functions may be useful to you as well.

### `lterm`

A function to (re)open a terminal window with a tmux session inside it.
See also: [How I manage my terminals](https://lucaswerkmeister.de/posts/2018/05/06/managing-terminals/).

Usage: `lterm name location`, e. g. `lterm etc /etc`,
or just `lterm name`.
If the location is omitted,
the target of a symlink in `~/.config/lterm/` (respecting `$XDG_CONFIG_HOME`) is used,
e. g. `ln -s /etc ~/.config/lterm/etc` and then `lterm etc`.

If the tmux session already exists, it is reattached,
and if a terminal window is already attached to the session,
that window is activated and brought to the foreground,
so if you have a small library of lterm targets in ~/.config/lterm/,
you can essentially always run `lterm name` to bring the terminal “name” up.

Tab completion is available.

### `copy-location`

Copy the location header of a redirect URL.
The first argument is the URL,
which should respond with an HTTP 3xx status code and a location header.
That header is then copied to the system clipboard.
For example: `copy-location http://tinyurl.com/yakkmzz3`

### `wo`/`da`/`aka`

A triple of functions to record and replay the location of physical things (or anything else).
Run `da NAME` to store where *NAME* is
(write the description to standard input and eventually terminate it with Ctrl+D),
`wo NAME` to show where *NAME* is,
and `aka NAME ALIAS` to record an alias for *NAME*.
(If you don’t speak German, you might want to translate these functions before using them.)
