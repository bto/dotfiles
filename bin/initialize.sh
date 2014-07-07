#!/bin/bash
source $(dirname $0)/.init.sh

for script in $TOP_DIR/data/shell/initialize.d/*.sh; do
    source $script
done
