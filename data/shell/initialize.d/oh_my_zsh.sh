if [ -d ~/.oh-my-zsh ]; then
    (
        cd ~/.oh-my-zsh
        git fetch -p
        git pull
    )
else
    git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
fi
