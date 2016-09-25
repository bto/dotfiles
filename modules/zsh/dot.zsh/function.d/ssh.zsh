function ssh()
{
    if [ -d ~/.ssh/config.d ]; then
        cat ~/.ssh/config.d/*.conf > ~/.ssh/config
        chmod 600 ~/.ssh/config
    fi

    command ssh $@
}
