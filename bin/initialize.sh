#!/bin/bash
source $(dirname $0)/.init.sh

function initialize_sample_files()
{
    find * -name '*.sample' | while read sample_file; do
        file=${sample_file%.sample}
        if [ ! -f $file ]; then
            cp $sample_file $file
        fi
    done
}

function symlink_rc_files()
{
    for rc_file in $RC_DIR/*; do
        base=$(basename $rc_file)
        if [ ! -e $HOME/.$base ]; then
          	ln -sf $rc_file $HOME/.$base
        fi
    done
}

# main
initialize_sample_files
symlink_rc_files
