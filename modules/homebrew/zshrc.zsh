_command_exists brew || return

fpath=(
    $(brew --prefix)/share/zsh/site-functions(N-/)
    $fpath
)
