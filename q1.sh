#!/bin/bash

awk 'END {print NR}' aliceinwonderland.txt

awk '{for (i=1; i<=NF; i++) if ($i=="Alice") c++} END {print c}' aliceinwonderland.txt #I assumed that the qustion asked for each Alice even if it is in the end/beginning of the row else I would have used (i=2; i<=NF-1; i++)

sed -E 's/\s+/\n/g' aliceinwonderland.txt | awk 'NF {a[$1]++} END {for (k in a) print a[k], k}' | awk '$1==1 {print $2}'

sed -E 's/\s+/\n/g' aliceinwonderland.txt | awk 'NF {a[$1]++} END {for (k in a) print a[k], k}' | sort -rn | head -n 5 | awk '{print $2}'

awk '{for(i=1;i<=NF;i++) sum+=length($i); word+=NF} END{print sum/word}' aliceinwonderland.txt #used GPT for the loop in awk


