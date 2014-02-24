# Linear Regression Demo

# How to save the image
set term png
set output sprintf('%s.png', filename)

# Title of graph
set title sprintf("Data %s", filename)

# Label x and y axis
set xlabel 'time (s)'
set ylabel 'electric potential (v)'

# Find best fit curve
f(x) = m*x + b
fit f(x) filename via m,b

# Plot data
plot filename notitle with points, \
     f(x) title sprintf('f(x) = %.4fx + %.4f', m, b)

