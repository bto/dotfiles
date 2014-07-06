function _glob_args()
{
    eval ls $2 2>&- | while read file; do
        $1 $file
    done
}

function _glob_source()
{
    while [ -n "$1" ]; do
        _glob_args _source_if_exists $1
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

_glob_source '~/.zsh?*/.zshenv'
