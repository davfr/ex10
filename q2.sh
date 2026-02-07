#a
sed -n -E '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l
#b
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l
#c
sed -E 's/^.{70,}$/Long line/' sherlockholmes.txt
#d
sed -E 's/\<([A-Z])[[:lower:]]{1,}[[:space:]]+\1[[:lower:]]{1,}\>/Jonathan Maderer/g' sherlockholmes.txt
#e
sed -E 's/\(([^()]*)\)/[\1]/g' sherlockholmes.txt
