#!/bin/bash
awk 'END {print NR}' aliceinwonderland.txt
awk '{for (i=1; i<=NF; i++) if ($i=="Alice") count++} END { print count }' aliceinwonderland.txt
sed -E 's/[[:space:]]+/\n/g' aliceinwonderland.txt | awk 'NF {a[$1]++} END {for (k in a) if(a[k]==1) print k}'
sed -E 's/[[:space:]]+/\n/g' aliceinwonderland.txt | awk 'NF {a[$1]++} END {for (k in a) print a[k], k}' | sort -nr | head -5
awk '{for (i=1; i<=NF; i++) {sum += length($i); cnt++}} END{print sum/cnt}' aliceinwonderland.txt
# I learned how to use a for-loop in awk with the help of ChatGPT
