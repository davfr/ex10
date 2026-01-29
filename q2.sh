#!/bin/bash

#a)
sed -E -n '/(Sherlock|Holmes)/p' sherlockholmes.txt | wc -l

#b)

sed -E 's/(Sherlock|Holmes)/\n\1\n/' sherlockholmes.txt | sed -n -E '/(Sherlock|Holmes)/p' | wc -l

#c)

sed -E 's/^.{70,}$/Long Line/' sherlockholmes.txt

#d)

sed -E 's/[A-Z]+[a-z]+[[:space:]][A-Z]+[a-z]+/Ily Glazer/g' sherlockholmes.txt

#e)

sed -n -E 's/\((.+)\)/[\1]/gp' sherlockholmes.txt
