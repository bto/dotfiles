_command_exists src-hilite-lesspipe.sh || return

export LESSOPEN='| src-hilite-lesspipe.sh %s'
