#!/bin/awk -f

BEGIN {print "hello"}

/^A.*$/{print $1 "Match A"}

{print $3 "Match every line"}

