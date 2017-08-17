function jcd()
{
    local dir=$(_z -j 2>&1 | tac | peco --layout=bottom-up --query "$*" | awk '{print $2}')
    if [ ! -z "$dir" ]; then
        cd $dir
    fi
}
