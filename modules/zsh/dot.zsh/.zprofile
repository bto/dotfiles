__dir__=$(dirname ${(%):-%N})

_sources $__dir__/profiles/*.zsh(N-.)
_sources $DOTFILES_DIR/modules/*/zsh.profile(N-.)
_sources ~/.zsh?*/.zprofile(N-.)
_sources ~/.zsh?*/profiles/*.zsh(N-.)
