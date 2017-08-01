setopt transient_rprompt
setopt prompt_subst

function _prompt_git_branch() {
    branch=$(git branch 2> /dev/null | grep '^*' | cut -d ' ' -f 2)
    if [ x$branch = 'x' ]; then
        return
    fi
    echo "(git:$branch)"
}

function _prompt_set() {
    local random_color_start=$'%{\e[$[31+$RANDOM%6]m%}'
    local random_color_end=$'%{\e[m%}'

    PROMPT=$random_color_start$'%B%0(?||[ERROR:%?] )[%D{%T}]$(_prompt_git_branch)(%~)\n%#%b '$random_color_end
    RPROMPT=$random_color_start"%n@%m %D{%m/%d}"$random_color_end
}

_prompt_set
