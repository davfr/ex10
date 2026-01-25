awk 'END {print NR}' aliceinwonderland.txt
awk '/ Alice / {count++} END {print count}' aliceinwonderland.txt
awk '{a[$1]++} END {for (k in a) {if (a[k]==1) print a[k], k}}' aliceinwonderland.txt 
awk '{a[$1]++} END {for (k in a) {if (k ~ /[A-Za-z]/) print a[k], k}}' aliceinwonderland.txt | sort -n | tail -5
awk '{for(i=1;i<=NF;i++) {sum+=length($i);count++}} END {print sum/count}' aliceinwonderland.txt 
