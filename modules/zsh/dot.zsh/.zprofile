__dir__=$(dirname ${(%):-%N})

_sources $__dir__/profile.d/*.zsh(N-.)
_sources $DOTFILES_DIR/modules/*/zsh.profile(N-.)
_sources $__dir__/profile.d-post/*.zsh(N-.)
_sources ~/.zsh?*/.zprofile(N-.)
_sources ~/.zsh?*/profile.d/*.zsh(N-.)
