#!/bin/bash
#a
sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | wc -l
#b
sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | grep -o 'Sherlock\|Holmes' | wc -l
#c
sed 's/^.\{70,\}$/Long line/' sherlockholmes.txt 
#d
sed -r 's/\b[A-Z][a-zA-Z]+ [A-Z][a-zA-Z]+/Ido Ohayon/g' sherlockholmes.txt 
#e
sed -E 's/\(([^()]*)\)/[\1]/g' sherlockholmes.txt
