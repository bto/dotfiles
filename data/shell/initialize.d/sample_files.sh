find * -name '*.sample' | while read sample_file; do
    file=${sample_file%.sample}
    if [ ! -f $file ]; then
        cp $sample_file $file
    fi
done
