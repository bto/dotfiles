echo | xargs --no-run-if-empty 2> /dev/null
if [ $? -eq 0 ]; then
    XARGS_NO_RUN=--no-run-if-empty
else
    XARGS_NO_RUN=
fi
