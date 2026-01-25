#a
awk '{print NR}' aliceinwonderland.txt | tail -1
#b
grep -o " Alice " aliceinwonderland.txt | wc -l
#c
grep -E -o  "[A-Za-z]+"  aliceinwonderland.txt | sort | uniq -c | sort -h | awk '$1 == 1'
#d
grep -E -o  " [A-Za-z]+ "  aliceinwonderland.txt | sort | uniq -c | sort -rh | head -n 5
#e
grep -E -o  "[A-Za-z]+"  aliceinwonderland.txt | awk '{total+=length($0)} END{print total/NR}'
