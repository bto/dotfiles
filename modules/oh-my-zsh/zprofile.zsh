[ -d $HOME/.oh-my-zsh ] || return

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(golang themes vagrant)

source $ZSH/oh-my-zsh.sh

unset LC_CTYPE
