#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# local bin
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
