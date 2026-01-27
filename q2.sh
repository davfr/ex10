#A
sed -En '/Sherlock|Holmes/p' sherlockholmes.txt |wc -l
#B
sed -E 's/Sherlock|Holmes/\n&\n/g' sherlockholmes.txt|sed -En '/Sherlock|Holmes/p'|wc -l
#C
sed -E 's/^.{70,}$/Long Line/p' sherlockholmes.txt
#D
sed -E 's/([A-Z][a-z]+) ([A-Z][a-z]+)/Yarden Safran/g' sherlockholmes.txt
#E
sed -E 's/\((.*)\)/[\1]/g' sherlockholmes.txt
