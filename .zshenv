export EDITOR="/usr/bin/emacs -nw -Q"
export VISUAL="/usr/bin/emacs -nw -Q"
# local bin paths
typeset -U path PATH
path=(~/.local/bin $path)
export PATH
. "$HOME/.cargo/env"
