_command_exists keychain || return

keychain id_rsa id_dsa

if [ -f $HOME/.keychain/$HOST-sh ]; then
    source $HOME/.keychain/$HOST-sh
fi
