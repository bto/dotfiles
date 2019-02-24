_command_exists peco || return

_sources $(dirname ${(%):-%N})/rc.d/*.zsh(N-.)
