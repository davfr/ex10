sed 's/[^A-Za-z]/ /g' sherlockholmes.txt | tr ' ' '\n' | sed -n '/^Sherlock$\|^Holmes$/p' | wc -l

