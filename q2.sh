sed -E -n '/Sherlock|Holmes/p' sherlockholmes.txt | wc -l
sed -E -n '/Sherlock|Holmes/p' sherlockholmes.txt | grep -E -o 'Holmes|Sherlock' | wc -l 
sed -E 's/^.{70,}/Long Line/' sherlockholmes.txt 
sed -E 's/[A-Z][A-Za-z]{1,} [A-Z][A-Za-z]{1,}/Amit Doyev/g' sherlockholmes.txt
sed -E 's/\((.*)\)/\[\1\]/g' sherlockholmes.txt 
