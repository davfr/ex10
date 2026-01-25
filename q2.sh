#!/bin/bash

#q2a
cat books/sherlockholmes.txt | sed -n '/Sherlock\|Holmes/p' | awk '{print NR, /bin/bash}' | cut -f 1 -d   | tail -1
463

#q2b
cat books/sherlockholmes.txt | sed -n '/Sherlock\|Holmes/p' | grep Holmes |Sherlock | wc -l
220


#q2c
cat books/sherlockholmes.txt | sed 's/^.\{70,\}$/Long Line/'

#q2d
 
cat books/sherlockholmes.txt | sed  's/[A-Z][a-z]*\([[:space:]][A-Z][a-z]*\)\{1,\}/Omer/' 

#q2e
cat books/sherlockholmes.txt | sed -E 's/\(([^)]*)\)/[\1]/g'
