function _peco_select_history()
{
    BUFFER=$(fc -l -n 1 | tac | peco --layout=bottom-up --query "$LBUFFER")
    CURSOR=$#BUFFER         # move cursor
    zle -R -c               # refresh
}

zle -N _peco_select_history
bindkey '^R' _peco_select_history
