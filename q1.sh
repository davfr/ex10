#!/bin/bash


#a

awk 'END {print NR}' aliceinwonderland.txt

#b

awk '{ for (i=1; i<=NF; i++) if ($i=="Alice") c++} END { print c }' aliceinwonderland.txt

#C

awk '{ for (i=1; i <= NF; i++) print $i }' aliceinwonderland.txt | sort | uniq -c | sort | awk '$1==1 { print $2 }'

#d

awk '{ for (i=1; i <= NF; i++) print $i }' aliceinwonderland.txt | sort | uniq -c | sort -n | tail -n 5

#e

a=$(awk '{ for (i=1; i<=NF; i++) sum += length($i) } END { print sum }' aliceinwonderland.txt )
b=$(awk '{ for (i=1; i<=NF; i++) total++ } END { print total }' aliceinwonderland.txt)
echo $a/$b | bc -l
