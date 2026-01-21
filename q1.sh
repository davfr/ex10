#!/bin/bash

awk 'END {print NR}' aliceinwonderland.txt

awk '{for(i=1;i<=NF;i++) if($i=="Alice") count++} END {print count}' aliceinwonderland.txt

awk '{for(i=1;i<=NF;i++) count[$i]++} END {for(word in count) if(count[word]==1) print word}' aliceinwonderland.txt

awk '{for(i=1;i<=NF;i++) count[$i]++} END {for(word in count) print count[word], word}' aliceinwonderland.txt | sort -nr | head -5

awk '{for(i=1;i<=NF;i++){total_len += length($i); total_words++}} END {print total_len/total_words}' aliceinwonderland.txt


