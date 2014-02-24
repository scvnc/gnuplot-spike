#!/bin/bash

graphs_dir="graphs"
fitlog="fit.log"

mkdir $graphs_dir

# For each datafile
for f in linreg_data/*.dat; do

    basename=`basename $f |cut -d. -f 1`
    gp_output=$f.png
    
    # Generate graph
    gnuplot -e "filename='$f'" linreg.gp
    
    # Move output file to graphs folder.
    mv $gp_output $graphs_dir/$basename.png
    
    # Move best-fit line log
    mv $fitlog $graphs_dir/$basename.fit.log
done
