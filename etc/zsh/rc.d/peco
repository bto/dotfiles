_command_exists peco || return

function peco_select_history()
{
    BUFFER=$(fc -l -n 1 | tac | peco --query "$LBUFFER")
    CURSOR=$#BUFFER         # move cursor
    zle -R -c               # refresh
}

zle -N peco_select_history
bindkey '^R' peco_select_history
