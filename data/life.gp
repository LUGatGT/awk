set term wxt
set termoption enhanced
set datafile sep '\t'

set xlabel "Life expectancy"
set ylabel "GDP per capita"
plot 'life.data' u 3:2:1 w labels hypertext point pt 7
