#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias vi='vim'
alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export SOCKS5_PASSWORD="hello"
export GIT_PROXY_COMMAND=~/.torgit
