dir=/Applications/Docker.app/Contents/Resources/etc
fdir=$ZDOTDIR/functions

[ -d $dir ] || return
[ -f $fdir/_docker ]         || ln -s $dir/docker.zsh-completion         $fdir/_docker
[ -f $fdir/_docker-compose ] || ln -s $dir/docker-compose.zsh-completion $fdir/_docker-compose
