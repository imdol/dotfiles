#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\033[1;36m\]\u\[\033[0;31m\]@\[\033[1;32m\]\h:\[\033[1;35m\]\w\[\033[0;31m\]\$\[\033[0m\] '
