#!/bin/bash

sed -nE '/Sherlock | Holmes/p' sherlockholmes.txt | wc -l
#searching for 2 patterns in a line

grep -oE '[[:alpha:]]+' sherlockholmes.txt | sort | uniq -c | sed -nE '/Sherlock|Holmes/p' 
#number of the words Sherlock or Holmes apear in the text.

sed -E '/^.{70,}$/c\Long Line' sherlockholmes.txt
#-E enables extended regular expressions /c stands for change
 
 sed -En '/The[[:space:]]+[[:upper:]][[:alpha:]]{1,}/! s/[[:upper:]][[:alpha:]]{1,}[[:space:]]+[[:upper:]][[:alpha:]]{1,}/Noy/gp' sherlockholmes.txt

#replace every name of a person or a place to Noy 
#{1,} at least 1 ----- g for global -n only what has changed together with /p
#BTW it changes also "The *Word*" makes it more complex to achieve this part ChtGPT helped me with that





sed -En 's/\((.{5,})\)/[\1]/gp' sherlockholmes.txt 
#\( - not grouping
#p prints -n flag for printing only lines that changed
#\1 "capture" the first group.


