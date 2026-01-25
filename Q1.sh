#!/bin/bash

### A
awk ' {print NR} ' aliceinwonderland.txt | tail -1

### B
awk '/ Alice / {count ++} END {print count}' aliceinwonderland.txt

### C
awk '{for (i=1; i<=NF; i++) count[$i]++} END {for (word in count) if (count[word] ==1) print word}' aliceinwonderland.txt

### D
awk '{for (i=1; i<=NF; i++) count[$i]++ } END { for (word in count) print word, count[word] }'  aliceinwonderland.txt | sort -k2n | tail -5

### E
awk '{for (i=1; i<=NF; i++) count[$i]++ } END { for (word in count) print word, count[word] }'  aliceinwonderland.txt | awk ' {sum_chars += length($1) * $2; total_words += $2} END { print sum_chars / total_words}'
