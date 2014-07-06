_command_exists brew || return

_glob_add_path_env PATH $(brew --prefix)/opt/*/libexec/gnubin
_glob_add_path_env MANPATH $(brew --prefix)/opt/*/libexec/gnuman

_glob_source "$ZDOTDIR/profile.d/homebrew.d/*.zsh"
