
#a
awk '{print NR}' aliceinwonderland.txt | wc -l

#b 
grep -o " Alice " aliceinwonderland.txt | wc -l

#c
grep -Eo " [a-z|A-Z]+ " aliceinwonderland.txt | sort | uniq -c | sort -nr | awk '$1 == 1'

#d
grep -Eo " [a-z|A-Z]+ " aliceinwonderland.txt | sort | uniq -c | sort -nr | head -n 5

#e
grep -Eo [[:alpha:]]+ aliceinwonderland.txt | awk '{sum+=length($0) } END{print sum/NR}'
