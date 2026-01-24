#!/bin/bash

sed -n '/Sherlock\|Holmes/p' sherlockholmes.txt | wc -l # used GPT for "-n"

sed 's/[[:punct:]]//g' sherlockholmes.txt | sed -E 's/\s+/\n/g' | awk 'NF {if ($0 == "Sherlock" || $0 == "Holmes") count++} END {print count}'

sed -E 's/^.{70}.*$/Long line./' sherlockholmes.txt

sed -E 's/[[:upper:]][[:alpha:]]+\s[[:upper:]][[:alpha:]]+/Achiad Avigdori/g' sherlockholmes.txt

sed 's/(/[/g' sherlockholmes.txt | sed 's/)/]/g'
