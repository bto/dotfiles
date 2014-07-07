function xalias()
{
    local alias_name=$1
    shift

    if [ x$(whence $1) != "x" ]; then
        alias $alias_name="$@"
    fi
}
