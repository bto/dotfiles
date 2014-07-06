if [ ! -f $(brew --prefix)/etc/profile.d/z.sh ]; then
    return
fi

source $(brew --prefix)/etc/profile.d/z.sh

function _precmd_z()
{
    _z --add "$(pwd -P)"
}

precmd_functions+=_precmd_z
