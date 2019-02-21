function ikill()
{
    local pid=$(ps -ef | peco --layout=bottom-up | awk '{print $2}')
    if [ ! -z "$pid" ]; then
        kill $@ $pid
    fi
}
