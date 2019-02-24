_add_functions $DOTFILES_ZSH_FUNCTIONS_DIR(N-/)
_add_functions $DOTFILES_DIR/modules/*/functions(N-/)

_sources $DOTFILES_SOURCE_DIR/zsh/zshrc.d/*.zsh(N-.)
_sources $DOTFILES_DIR/modules/*/zshrc.zsh(N-.)
_sources ~/.zsh?*/.zshrc(N-.)
_sources ~/.zsh?*/rc.d/*.zsh(N-.)
