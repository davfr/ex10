sed -nE '/(Holmes|Sherlock)/p' sherlockholmes.txt | wc -l
sed -E 's/[[:punct:]]/ /g; s/[[:space:]]+/\n/g' sherlockholmes.txt | sed -nE '/^(Sherlock|Holmes)$/p' | wc -l
sed -E '/^.{70,}$/c\Long line' sherlockholmes.txt
sed -E 's/([A-Z]){1}([a-z])+ ([A-Z]){1}([a-z])+/Almog Maman/g' sherlockholmes.txt
sed 's/(/[/g' sherlockholmes.txt | sed 's/)/]/g'
