#a
sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt|wc -l
#b
sed 's/[[:space:]]/\n/g' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l
#c
sed -n 's/^.\{70,\}$/"Long line"/' sherlockholmes.txt
#d
sed -E 's/[[:upper:]][[:lower:]]{1,}[[:space:]]+[[:upper:]][[:lower:]]{1,}/Hai Bramli/g' sherlockholmes.txt 
#e
sed -E 's/\(([^()]*)\)/[\1]/g' sherlockholmes.txt

