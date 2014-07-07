for rc_file in $RC_DIR/*; do
    base=$(basename $rc_file)
    if [ ! -e $HOME/.$base ]; then
        ln -sf $rc_file $HOME/.$base
    fi
done
