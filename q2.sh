#!/bin/bash

sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l

sed -n 's/.*\(Sherlock\|Holmes\).*/\1/p' sherlockholmes.txt | wc -l

sed 's/^.\{70,\}$/line Long/' sherlockholmes.txt

sed 's/[A-Z][a-z]\+ [A-Z][a-z]\+/Gal Efal/g' sherlockholmes.txt

sed 's/(/[/g; s/)/]/g' sherlockholmes.txt

