export GOPATH=$HOME/projects/go
export GOBIN=$GOPATH/bin

path=(
    $GOBIN(N-/)
    $path
)

if [ -d /usr/local/opt/go@1.4/libexec ]; then
    export GOROOT_BOOTSTRAP=/usr/local/opt/go@1.4/libexec
fi
