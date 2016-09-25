function jcd()
{
    local dir=$(_z -j 2>&1 | tac | peco --query "$*" | awk '{print $2}')
    if [ ! -z "$dir" ]; then
        cd $dir
    fi
}
