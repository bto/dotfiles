__dir__=$(dirname ${(%):-%N})

_sources $__dir__/rcs/*.zsh(N-.)
_sources $DOTFILES_DIR/modules/*/zsh.rc(N-.)
_sources ~/.zsh?*/.zshrc(N-.)
_sources ~/.zsh?*/rcs/*.zsh(N-.)
