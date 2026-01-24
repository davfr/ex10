awk 'END {print NR}' aliceinwonderland.txt 

awk '{for (i=2;i<NF;i++) { if ($i=="Alice"){ count ++ }}} END {print count}' aliceinwonderland.txt

awk ' {for (i = 2; i < NF; i++) {  print $i } }' aliceinwonderland.txt | sort | uniq -c | awk ' $1 = 1 {print $2}'


cat aliceinwonderland.txt | tr -d '[:punct:]' | tr -s '[:blank:]' ' ' | tr ' ' '\n' | grep '[[:alnum:]]' | sort | uniq -c | sort -nr | head -10

cat aliceinwonderland.txt | tr -d '[:punct:]' | tr -s '[:blank:]' ' ' | tr ' ' '\n' | grep '[[:alnum:]]' | awk ' {sum += length($1); count++} END {print sum/count } '
