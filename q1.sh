#a
awk 'END {print NR}' aliceinwonderland.txt 

#b
awk '/ Alice / {count++} END {print count}' aliceinwonderland.txt

#c
awk '{a[$1]++} END {for (k in a) {if (a[k]==1) print a[k], k}}' aliceinwonderland.txt

#d
awk '{a[$1]++} END {for (k in a) {if (k~/[A-Za-z]/) print a[k], k}}' aliceinwonderland.txt | sort -h | tail -5

#e
grep -o '\S\+' aliceinwonderland.txt | awk '{ sum += length($1); count++ } END { print sum/count }'