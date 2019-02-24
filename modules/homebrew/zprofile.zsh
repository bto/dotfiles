_command_exists brew || return

path=(
    $(brew --prefix)/opt/*/libexec/gnubin(N-/)
    $path
)

manpath=(
    $(brew --prefix)/opt/*/libexec/gnuman(N-/)
    $manpath
)
