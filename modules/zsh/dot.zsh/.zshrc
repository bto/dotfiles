__dir__=$(dirname ${(%):-%N})

_sources $__dir__/rc.d/*.zsh(N-.)
_sources $DOTFILES_DIR/modules/*/zsh.rc(N-.)
_sources ~/.zsh?*/.zshrc(N-.)
_sources ~/.zsh?*/rc.d/*.zsh(N-.)
