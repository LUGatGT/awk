set term wxt
set termoption enhanced
set datafile sep '\t'

set xlabel "area"
set ylabel "gdp per capita"
plot 'data.txt' u 3:2:1 w labels hypertext point pt 7
