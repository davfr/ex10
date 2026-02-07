#!/bin/bash
#a
awk 'END {print NR}' aliceinwonderland.txt
#b
awk  '/ Alice / {count++} END{print count}' aliceinwonderland.txt
#c
awk '{
        for(i=1; i <=NF; i++){
                words[$i]++
        }
     }
END {
        for(word in words){
                if(words[word] == 1){
                        print word
                 }
         }
    }' aliceinwonderland.txt
#d
awk '{
        for(i=1; i <=NF; i++){
                words[$i]++
        }
     }
END {
        for(word in words){
                print word , words[word]

        }
    }' aliceinwonderland.txt | sort -k2 -n | tail -5
#e
awk '{
        for(i=1; i <=NF; i++){
                letters += length($i)
                count++
          }
     }
END {
        print letters/count
    }' aliceinwonderland.txt

