#!/bin/bash
#a
echo "number of rows:"
awk '{print NR}' aliceinwonderland.txt | tail -n 1
#b
echo "number of times Alice appear:"
awk '/ Alice / {count++} END {print count}' aliceinwonderland.txt
#c
echo "words appear 1 times:"
cat aliceinwonderland.txt | tr -dc '[:alpha:][:space:]' | tr -s ' ' '\n' | tr '[:upper:]' '[:lower:]' | sort | uniq -c | sort -rn | awk '$1 == 1 {print $2}'

#d
echo " 5 most freuqency words:"
cat aliceinwonderland.txt | tr -dc '[:alpha:][:space:]' | tr -s ' ' '\n' | tr '[:upper:]' '[:lower:]' |sort | uniq -c | sort -rn | head -n 5

#e
echo "the average:"
cat aliceinwonderland.txt | tr -d '[:punct:]' | tr -s ' ' '\n' | awk '{count += length($0)}{words += NF} END {print count/words}'

#assitents in ai to understand how to keep in the words only  alpha and space - tr -dc '[:alpha:][:space:]'
