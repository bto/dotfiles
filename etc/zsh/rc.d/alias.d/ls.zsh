if ls --color --color > /dev/null 2>&1; then
    alias ls='ls -F --color=auto';
else
    alias ls='ls -F';
fi
