_command_exists pyenv || return

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
