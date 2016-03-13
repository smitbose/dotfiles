# The following lines were added by compinstall
zstyle :compinstall filename '/home/binayak/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
alias zz="cd $HOME/projects/"
alias ff="cd $HOME/projects/fractal/Fractal"
alias tor="sudo -u tor tor"
alias ta="tmux attach -t"
alias tn="tmux new -s"
alias tl="tmux ls"

export SOCKS5_PASSWORD="hello"
export GIT_PROXY_COMMAND=~/.torgit

export PATH=$PATH:/home/binayak/projects/omnetpp-4.6/bin
export LD_LIBRARY_PATH=/home/binayak/projects/omnetpp-4.6/lib:/usr/local/lib:$LD_LIBRARY_PATH
