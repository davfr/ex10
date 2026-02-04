awk '{for(i=1;i<=NF;i++) cnt[$i]++} END{for(w in cnt) print cnt[w], w}' aliceinwonderland.txt | sort -nr | head -5

