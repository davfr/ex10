sed -n "/Sherlock\|Holmes/p" sherlockholmes.txt | wc -l
sed "s/Sherlock/\nSherlock/g; s/Holmes/\nHolmes/g" sherlockholmes.txt | sed -n "/Sherlock\|Holmes/p" | wc -l
sed -E "/^.{70}/ s/.*/Long Line/" sherlockholmes.txt #  I would have added -i to change the original file
sed -E "s/[A-Z][a-z]+ [A-Z][a-z]+/Amit Pinchas/g"  sherlockholmes.txt
sed -E "s/\((.*)\)/\[\1\]/g"  sherlockholmes.txt
