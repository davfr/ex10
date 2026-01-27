#!bun/bash 

a=$(sed -n -E '/Sherlock | Holmes/p' sherlockholmes.txt  | wc -l)
echo "a) Number of rows conatining Sherlock or Holmes: ${a}"

b=$(sed -E 's/(sherlock|holmes)/\n\1\n/Ig' sherlockholmes.txt  | sed -E -n '/^(sherlock|holmes$)/Ip' | wc -l)
echo "b) Count of sherlock and holmes: ${b}"

echo "c)  sed -E 's/^.{70,}$/Long Line/' sherlockholmes.txt"

echo "d)  sed -E 's/ ([A-Z]{1}[a-z]{1,} ){2}/ Noya Weiss /g' sherlockholmes.txt"

echo "e)  sed -E 's/\((.+)\)/\[\1\]/' sherlockholmes.txt"
