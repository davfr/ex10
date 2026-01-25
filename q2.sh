#a
sed -En '/Sherlock|Holmes/p' sherlockholmes.txt | wc -l

#b
sed -En '/Sherlock|Holmes/p' sherlockholmes.txt | grep -o -E 'Sherlock|Holmes' | wc -l

#c
sed -E 's/^.{70}$/"Long line"/g' sherlockholmes.txt

#d
sed -E 's/[A-Z][A-Za-z]{1,} [A-Z][A-Za-z]{1,}/Maya Graff/g' sherlockholmes.txt

#e
sed -E 's/\(/[/g; s/\)/]/g' sherlockholmes.txt