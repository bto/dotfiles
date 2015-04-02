function _glob_args()
{
    local pattern=$1
    shift

    eval echo $pattern 2>&- | tr ' ' '\n' | while read file; do
        $@ $file
    done
}

function _glob_source()
{
    while [ -n "$1" ]; do
        _glob_args $1 _source_if_exists
        shift
    done
}

function _source_if_exists()
{
    if [ -f "$1" ]; then
        source "$1"
    fi
}

unsetopt nomatch

_glob_source "$ZDOTDIR/function.d/*.zsh"
_glob_source '~/.zsh?*/.zshenv'
