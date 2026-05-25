export EDITOR="/usr/bin/emacs -nw -Q"
export VISUAL="/usr/bin/emacs -nw -Q"
export XDG_DATA_HOME="$HOME/.local/share"
# local bin paths
typeset -U path PATH
path=(~/.local/bin $path)
export PATH
. "$HOME/.cargo/env"
