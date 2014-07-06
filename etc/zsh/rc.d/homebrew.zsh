_command_exists brew || return

# findutils
if [ -d $(brew --prefix findutils) ]; then
    alias find=gfind
    alias xargs=gxargs
fi

# z
if [ ! -f $(brew --prefix)/etc/profile.d/z.sh ]; then
    return
fi
_Z_CMD=j
source $(brew --prefix)/etc/profile.d/z.sh
function _precmd_z() {
    _z --add "$(pwd -P)"
}
precmd_functions+=_precmd_z
