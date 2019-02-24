source $(dirname ${(%):-%N})/init.zsh

DOTFILES_MODULE_DIR=$DOTFILES_DIR/modules
DOTFILES_SOURCE_DIR=$DOTFILES_DIR/src
DOTFILES_VAR_DIR=$DOTFILES_DIR/var
DOTFILES_VENDOR_DIR=$DOTFILES_VAR_DIR/vendor
DOTFILES_ZSH_DIR=$DOTFILES_VAR_DIR/zsh
DOTFILES_ZSH_FUNCTIONS_DIR=$DOTFILES_ZSH_DIR/functions

functions_dir=$DOTFILES_SOURCE_DIR/zsh/functions
fpath=($fpath $functions_dir(N-/))
for f in $functions_dir/*; do
    autoload -U $(basename $f)
done

_sources ~/.zsh?*/.zshenv(N-.)
