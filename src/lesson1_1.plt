set terminal png  font "Arial, 20"


set log xy
set xlabel "h"
set ylabel "Error"

set format xy "10^{%L}"

set key right bottom

set output "fd_error.png"
p "fd_error.out" u 1:3 title "Forward difference" w lp lc rgb "red" pt 7 ps 2\
, "" u 1:5 title "Central difference" w lp lc rgb "blue" pt 9 ps 2

unset output