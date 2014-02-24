# Set range of axis'
#set xrange [0:19]
#set yrange [0:19] reverse

# Remove tics under the graph (default)
#unset xtics

# Have the tics on the axis:
# start at 1, increment by 1, and go to 19
#set x2tics 1,1,19
#set ytics 1,1,19

# Add A-G
#set y2tics ('A' 0, 'B' 1, 'C' 2, 'D' 3, 'E' 4, 'F' 5, 'G' 6)

# Turn on grid for tics
#set grid x2tics ytics


# Tell it how to save the image
set term png
set output 'out.png'

f(x) = m*x + b
fit f(x) 'linregdemo.dat' via m,b

plot 'linregdemo.dat' title 'Observed Data' with points, \
    f(x) title 'Line of best fit'

