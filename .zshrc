PROMPT='%F{15}%n%F{9}@%B%F{15}%m%b:%F{15}%~%F{9}%# %F{15}'

fpath=(~/.zsh $fpath)

autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit

if [ $(command -v speedtest-cli) ]; then
    alias spt='speedtest-cli --secure'
fi

if [ $(command -v emacs) ]; then
    alias emocs='emacs -nw -Q'
fi

alias ls='ls --color'

export PATH=$PATH:$(go env GOPATH)/bin # go bin
export PATH="$HOME/.local/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH=$PATH:$HOME/.nvm/versions/node/v26.5.1/bin/ # node bin

. "$HOME/.cargo/env" # cargo bin
. "$HOME/.deno/env" # deno bin

# EAS_AC_ZSH_SETUP_PATH=/home/imdol/.cache/eas-cli/autocomplete/zsh_setup && test -f $EAS_AC_ZSH_SETUP_PATH && source $EAS_AC_ZSH_SETUP_PATH; # eas autocomplete setup
