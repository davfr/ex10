#A
cat aliceinwonderland.txt | awk '{print NR}'|tail -1


#B
awk '{for(i=1; i<=NF; i++) if($i == "Alice") count++} END {print count}' aliceinwonderland.txt

#C
awk '{for(i=1; i<=NF; i++) dict[$i]++} END {for (k in dict) if(dict[k]==1) print k}' aliceinwonderland.txt

#D
awk '{for(i=1; i<=NF; i++) dict[$i]++} END {for (k in dict) if (k != "" && k != " ") print dict[k], k}' aliceinwonderland.txt | sort -n | tail -5

#E
awk '{(total_words+=NF); for(i=1; i<=NF; i++) (total=total+length($i))} END {print(total/total_words)}' aliceinwonderland.txt 
