[ -d $HOME/.oh-my-zsh ] || return

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"

plugins=(git themes)

source $ZSH/oh-my-zsh.sh
