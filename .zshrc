PROMPT='%F{15}%n%F{9}@%B%F{15}%m%b:%F{15}%~%F{9}%# %F{15}'

fpath=(~/.zsh $fpath)

autoload -Uz compinit
compinit

if [ $(command -v xclip) ]; then
    alias c='xclip'
    alias v='xclip -o'
fi

if [ $(command -v speedtest-cli) ]; then
    alias spt='speedtest-cli --secure'
fi

if [ $(command -v emacs) ]; then
    alias emocs='emacs -nw -Q'
fi

alias ls='ls --color'

export PATH=$PATH:$(go env GOPATH)/bin # go bin
export PATH=$PATH:$HOME/.nvm/versions/node/v25.9.0/bin/ # node bin
export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

. "$HOME/.cargo/env" # cargo bin
. "/home/$USER/.deno/env"
