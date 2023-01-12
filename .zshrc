PROMPT='%F{51}%n%F{9}@%B%F{49}%m%b:%F{15}%~%F{9}%# %F{15}'

# bash color prompt
if [ $(command -v rg) ]; then
    alias grep='rg'
fi

if [ $(command -v xclip) ]; then
    alias c='xclip'
    alias v='xclip -o'
fi

alias ls='ls --color'
alias emocs='emacs -nw -q'

autoload -Uz compinit
compinit
