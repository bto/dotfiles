setopt transient_rprompt
setopt prompt_subst

function _set_prompt() {
    local random_color_start=$'%{\e[$[31+$RANDOM%6]m%}'
    local random_color_end=$'%{\e[m%}'

    PROMPT=$random_color_start$'%B%0(?||[ERROR:%?] )[%D{%T}](%~)\n%#%b '$random_color_end
    RPROMPT=$random_color_start"%n@%m %D{%m/%d}"$random_color_end
}

_set_prompt
