#!/bin/bash

nr=$(awk 'END{print NR}' aliceinwonderland.txt)
echo "Number of rows: ${nr}"

alice_count=$(awk 'BEGIN{c=0} / Alice /{c+=1} END{print c}' aliceinwonderland.txt)
echo "Alice count: ${alice_count}"

word_count=$(awk '{total+=NF} END{print total}' aliceinwonderland.txt)
echo "Total words count: ${word_count}"

top_5=$(cat aliceinwonderland.txt | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | awk '{for(i=1; i<=NF; i++) if ($i ~ /^[[:alpha:]]+$/) dict[$i]++} END{ for(word in dict)  print dict[word], word}' | sort -nr -t' ' -k1 | head -n5 )

echo "Top 5 most repeated words:"
echo "${top_5}"

avg=$(cat aliceinwonderland.txt | tr '[:upper:]' '[:lower:]' | tr -d '[:punct:]' | awk '{for(i=1; i<=NF; i++) if ($i ~ /^[[:alpha:]]+$/) {total_length+=length($i); total_words++}} END{print total_length/total_words}')
echo "Average word length: ${avg}"
