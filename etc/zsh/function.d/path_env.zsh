function _add_path_env_if_dir()
{
    if [ -d $2 ]; then
        eval $1=$2:\$$1
    fi
}

function _glob_add_path_env()
{
    local env_name=$1
    shift

    while [ -n "$1" ]; do
        _glob_args $1 _add_path_env_if_dir $env_name
        shift
    done
}
