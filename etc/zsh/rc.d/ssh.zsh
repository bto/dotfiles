if [ ! -z "$SSH_AUTH_SOCK" -a "$SSH_AUTH_SOCK" != "$HOME/.ssh/ssh_auth_sock" ]
then
    ln -sf $SSH_AUTH_SOCK $HOME/.ssh/ssh_auth_sock
    export SSH_AUTH_SOCK="$HOME/.ssh/ssh_auth_sock"
fi
