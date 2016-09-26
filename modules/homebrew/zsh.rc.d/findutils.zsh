if [ -d $(brew --prefix findutils) ]; then
    alias find=gfind
    alias xargs=gxargs
fi
