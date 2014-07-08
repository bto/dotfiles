[ -f $ZDOTDIR/vendor/z/z.sh ] || return

source $ZDOTDIR/vendor/z/z.sh

function _precmd_z()
{
    _z --add "$(pwd -P)"
}

precmd_functions+=_precmd_z
