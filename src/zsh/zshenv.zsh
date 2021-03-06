source $ZDOTDIR/init.zsh

DOTFILES_MODULE_DIR=$DOTFILES_DIR/modules
DOTFILES_SOURCE_DIR=$DOTFILES_DIR/src
DOTFILES_VAR_DIR=$DOTFILES_DIR/var
DOTFILES_VENDOR_DIR=$DOTFILES_VAR_DIR/vendor

dir=$DOTFILES_SOURCE_DIR/zsh/functions
fpath=($fpath $dir(N-/))
for file in $dir/*(N-.); do
    autoload -U $(basename $file)
done

_sources $ZDOTDIR/zshenv.zsh(N-.)
_sources $ZDOTDIR/zshenv.d/*.zsh(N-.)
