#!/bin/bash

awk END'{print NR}' aliceinwonderland.txt

grep -o " Alice " aliceinwonderland.txt | awk END'{print NR}'

grep -oE ' [[:alpha:]]+ ' aliceinwonderland.txt | sort | uniq -c | awk '$1==1' | wc -l

grep -oE ' [[:alpha:]]+ ' aliceinwonderland.txt | sort | uniq -c | sort -nr | awk ' NR==1 , NR==5 {print NR, $2}'

grep -oE ' [[:alpha:]]+ ' aliceinwonderland.txt |  grep -oE ' [[:alpha:]]+ ' aliceinwonderland.txt | awk '{sum+=length($0) ; count++} END{print sum/count}' 



