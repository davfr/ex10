#!bin/bash
#
#
awk 'END {print NR}' books/aliceinwonderland.txt 


awk '/ Alice / {count++} END {print count}' books/aliceinwonderland.txt 


awk '{ for (i=1; i<=NF; i++) print $i }' books/aliceinwonderland.txt | awk '{a[$1]++} END {for (k in a) print a[k], k}' | awk '$1==1 {print}'


awk '{ for (i=1; i<=NF; i++) print $i }' books/aliceinwonderland.txt | awk '{a[$1]++} END {for (k in a) print a[k], k}' | sort -nr | head -5


awk '{ for (i=1;i<=NF;i++) {sum += length($i); count++ }} END {print sum / count}' books/aliceinwonderland.txt
