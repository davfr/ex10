awk '{for(i=1;i<=NF;i++) cnt[$i]++} END{for(w in cnt) if(cnt[w]==1) print w}' aliceinwonderland.txt

