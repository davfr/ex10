#!/bin/bash
#a)
awk '{print "Num of rows:" NR, $0}' alice.txt | tail -n 1 | cut -d " " -f 1,2,3,4

#b)
cat alice.txt | tr -s '[:space:]' '\n' | awk '$0=="Alice"{count++} END{print "Num of Alice apperance:" count}'

#c)

awk '{for (i=1;i<=NF;i++) count[$i]++} END {for (w in count) if (count[w]==1) print w}' alice.txt | tr -d '[:punct:]' | head -n 10

#d)

awk '{for (i=1;i<=NF;i++) count[$i]++} END {for (w in count) print w,count[w]}' alice.txt | sort -h | awk '{sum[$1]+=$2} END {for (w in sum) print sum[w],w}' | sort -n | tail -n 5

#e)

sum_of_length=$(awk '{for (i=1;i<=NF;i++) print $i}' alice.txt | sort | tr -d '[:punct:]' | awk '{print tolower($1)}' | awk '{print length($1)}' | awk '{sum+=$1} END{print sum}')

count_of_all_words=$(awk '{for (i=1;i<=NF;i++) print $i}' alice.txt | wc -l)

result=$(echo "scale=2; ${sum_of_length} / ${count_of_all_words}" | bc)

echo 'the avg word length is:' ${result}
