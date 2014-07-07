function http_client()
{
    if type curl > /dev/null; then
        http_client='curl -sS'
    elif type wget > /dev/null; then
        http_client='wget -O -'
    else
        echo curl or wget should have been installed 1>&2
        exit 1
    fi

    $http_client $*
}
