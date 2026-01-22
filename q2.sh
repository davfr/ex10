#I used the chat in order to learn and sharpen my skills in writing regular expressions and using the SED function.
#There was no single prompt here, but rather an in depth learning dialogue.


sed -E -n '/(Sherlock|Holmes)/=' sherlockholmes.txt | wc -l

sed -E -n 's/(Sherlock)|(Holmes)/\n\1\2/gp' sherlockholmes.txt | wc -l

sed -E 's/^.{70,}$/Long line/' sherlockholmes.txt 

sed -E 's/[A-Z][a-z]{2,}\s+[A-Z][a-z]{2,}/Yotam Ben Moshe/g' sherlockholmes.txt

sed -E 's/\(/\[/g; s/\)/\]/g' sherlockholmes.txt 
