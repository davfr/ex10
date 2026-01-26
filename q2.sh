#!/bin/bash
#a
sed -rn '/Sherlock|Holmes/p' sherlockholmes.txt | wc -l
#b
cat sherlockholmes.txt  | tr -s ' ' '\n' | tr -dc '[:alpha:][:space:]' |sed -rn '/^Sherlock$|^Holmes$/p' | wc -l
#c
sed -E -i 's/^.{71,}$/Long line/' sherlockholmes.txt
#d
sed -E -i 's/\b[[:upper:]][[:alpha:]]+\b/Maya/g' sherlockholmes.txt
#e
sed -E -i 's/\(([^)]*)\)/[\1]/g' sherlockholmes.txt
