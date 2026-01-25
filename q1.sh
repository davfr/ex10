#!/bin/bash
#q1a
cat books/aliceinwonderland.txt | awk '{print NR}' | tail -1
3325

#q1b
cat books/aliceinwonderland.txt | awk '/ Alice / {print NR,NF, /bin/bash} ' | awk '{print NR}'  | tail -n 1
155

#q1c
cat books/aliceinwonderland.txt | awk '{ for (i=1; i<=NF; i++) c[]++} END { for( w in c) if (c[w]==1) print w } '
3860

#q1d

cat books/aliceinwonderland.txt  | awk '{for( i=1; i<=NF; i++) print } ' | sort | uniq -c  | sort -n | tail -6 
    459 of
    569 a
    662 and
    669 to
    849 
   1400 the

#q1e
words=$(cat books/aliceinwonderland.txt | awk '{ words+=NF } END { print words} ')
char=$( cat books/aliceinwonderland.txt | awk ' {for (i=1; i<=NF; i++) chars+=length($i) } END { print chars} ')
result=$((char/words))
echo $result
4
