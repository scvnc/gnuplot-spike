for f in linreg_data/*.dat; do
	gnuplot -e "filename='$f'" linreg.gp

done
