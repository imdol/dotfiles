#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

# bash color prompt
PS1="\[\033[38;5;29m\]\u\[$(tput sgr0)\]\[\033[38;5;196m\]@\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;48m\]\h\[$(tput sgr0)\]\[\033[38;5;49m\]:\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;126m\]\w\[$(tput sgr0)\]\[\033[38;5;196m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"


if [ $(command -v rg) ]; then
    alias grep='rg'
fi

if [ $(command -v xclip) ]; then
    alias c='xclip'
    alias v='xclip -o'
fi

alias emocs='emacs -nw -q'

# nvm path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
