#!/bin/bash
#q2.sh

file="sherlockholmes.txt"

# question 1

sed -n '/Sherlock\|Holmes/p' "$file" | wc -l

# question 2

sed 's/ /\n/g' "$file" | grep -c -E 'Sherlock|Holmes'

# question 3

sed 's/^.\{71,\}$/Long line/' "$file"

# question 4

sed 's/\<[A-Z][A-Za-z]\{2,\} [A-Z][A-Za-z]\{2,\}\>/Omri Naftali/g' "$file"

# question 5

sed 's/(\([^)]*\))/[\1]/g' "$file"
