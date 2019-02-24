dir=/Applications/Docker.app/Contents/Resources/etc
fdir=$DOTFILES_ZSH_FUNCTIONS_DIR

[ -d $dir ] || return
[ -f $fdir/_docker ]         || ln -s $dir/docker.zsh-completion         $fdir/_docker
[ -f $fdir/_docker-compose ] || ln -s $dir/docker-compose.zsh-completion $fdir/_docker-compose
[ -f $fdir/_docker-machine ] || ln -s $dir/docker-machine.zsh-completion $fdir/_docker-machine
