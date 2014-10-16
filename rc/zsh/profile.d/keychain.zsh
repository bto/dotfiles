_command_exists keychain || return

if [ -f $HOME/.ssh/id_rsa ]; then
    keychain id_rsa
fi

if [ -f $HOME/.ssh/id_dsa ]; then
    keychain id_dsa
fi

if [ -f $HOME/.keychain/$HOST-sh ]; then
    source $HOME/.keychain/$HOST-sh
fi
