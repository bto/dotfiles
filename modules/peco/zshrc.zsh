_command_exists peco || return

_sources $(dirname ${(%):-%N})/zshrc.d/*.zsh(N-.)
