function _add_functions()
{
    while [ -n "$1" ]; do
        dir=$1

        fpath=($fpath $dir(N-/))
        for file in $dir/*(N-.); do
            autoload -U $(basename $file)
        done

        shift
    done
}
