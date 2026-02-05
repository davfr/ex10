#a
sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l

#b
sed 's/Sherlock\|Holmes/snir/g' sherlockholmes.txt | grep -o "snir" | wc -l

#c
sed -E 's/.{70,}/Long Line/g' sherlockholmes.txt

#d
sed -E 's/\b[A-Z][a-zA-Z]+\s[A-Z][a-zA-Z]+\b/Snir/g' sherlockholmes.txt

#e
sed -E 's/\((.+)\)/\[\1\]/g' sherlockholmes.txt
