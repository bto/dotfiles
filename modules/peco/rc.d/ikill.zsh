function ikill()
{
    $(ps -ef | peco --layout=bottom-up | awk '{print $2}') | xargs kill $*
}
