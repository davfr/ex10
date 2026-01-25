#a
sed -E -n '/Sherlock|Holmes/p' sherlockholmes.txt | wc -l
#b
sed -E -n '/Sherlock|Holmes/p' sherlockholmes.txt | grep -o -E 'Sherlock|Holmes' | wc -l
#c
awk '{if (length($0)>70) print "Long line"; else print $0}' sherlockholmes.txt
#d
sed -E 's/([[:upper:]]){1}([a-z])+(\s)([[:upper:]]){1}([a-z])+/Maya/g' sherlockholmes.txt 
#e
sed 's/(/[/g; s/)/]/g' sherlockholmes.txt 
