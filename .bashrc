#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\033[1;36m\]\u\[\033[0;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[0;31m\]\$\[\033[0m\] '

if [ $(command -v rg) ]; then
    alias grep='rg'
fi

if [ $(command -v xclip) ]; then
    alias c='xclip'
    alias v='xclip -o'
fi

# nvm path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
