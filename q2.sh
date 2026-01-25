
#a
sed -E -n '/Sherlock|Holmes/p' sherlockholmes.txt | wc -l

#b
sed -E -n '/Holmes|Sherlock/p' sherlockholmes.txt | grep -Eo 'Sherlock|Holmes' | wc -l

#c
awk '{ if (length($0) > 70) print "Long Line"; else print $0 }' sherlockholmes.txt 

#d
sed -E 's/([A-Z])([a-z])+(\s)([A-Z])([a-z])+/Amir/g' sherlockholmes.txt

#e
sed 's/(/[/g; s/)/]/g' sherlockholmes.txt
