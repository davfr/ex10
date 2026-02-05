#a
cat sherlockholmes.txt | sed -n '/Sherlock\|Holmes/p' | wc -l

#b
cat sherlockholmes.txt | sed 's/[[:space:]]/\n/g' | sed -n -E '/(Sherlock|Holmes)/p' | wc -l

#c
cat sherlockholmes.txt | sed -n 's/^.\{70,\}$/"Long line"/'

#d
cat sherlockholmes.txt | sed -E 's/[[:upper:]][[:lower:]]{1,}[[:space:]]+[[:upper:]][[:lower:]]{1,}/Adi Hirsch/g'

#e
cat sherlockholmes.txt | sed -E 's/\(([^()]*)\)/[\1]/g'

