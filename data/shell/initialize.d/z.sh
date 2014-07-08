if [ -d $RC_DIR/zsh/vendor/z ]; then
    (
        cd $RC_DIR/zsh/vendor/z
        git fetch -p
        git pull
    )
else
    git clone git@github.com:rupa/z.git $RC_DIR/zsh/vendor/z
fi
