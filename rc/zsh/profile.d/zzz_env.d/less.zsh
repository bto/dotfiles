export LESS='-R'

if _command_exists src-hilite-lesspipe.sh; then
    export LESSOPEN='| src-hilite-lesspipe.sh  %s'
fi
