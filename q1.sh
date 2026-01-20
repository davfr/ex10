#!/bin/bash
#q1.sh

#a
awk 'END { print NR }' alice_in_wonderland.txt


#b
tr -d '[:punct:]' < alice_in_wonderland.txt \
| tr -s '[:space:]' '\n' > alice_words.txt
awk '$0=="Alice"{c++} END{print c}' alice_words.txt


#c
sort alice_words.txt | uniq -c | awk '$1==1 {print $2}'


#d
sort alice_words.txt | uniq -c | sort -nr -k1,1 | head -5


#e
num_of_words=$(wc -l < alice_words.txt)
all_words_length=$(awk '{ c += length($0) } END { print c }' alice_words.txt)
mean_word_len=$(( all_words_length / num_of_words ))
echo "The mean length of word is $mean_word_len"

  
