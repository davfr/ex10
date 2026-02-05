#a
awk '{print NR}' aliceinwonderland.txt | tail -1

#b
awk '{ for (i=1; i<=NF; i++) if ($i == "Alice") count++ } END { print count }' aliceinwonderland.txt

#c
cat aliceinwonderland.txt | tr " " "\n" | awk '{a[$1]++} END {for (k in a) if (a[k]==1) print a[k], k}'

#d
cat aliceinwonderland.txt | tr " " "\n" | awk '{a[$1]++} END {for (k in a) print a[k], k}' | sort -h | grep -E "[a-zA-Z]" | tail -5

#e
echo $(awk '{count=count+length($0)} END {print count} ' aliceinwonderland.txt) / $(awk '{ for (i=1; i<=NF; i++) count++ } END { print count }' aliceinwonderland.txt) | bc -l
