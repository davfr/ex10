#!/bin/bash
#q2.sh

#a
sed -n -E '/Sherlock|Holmes/p' sherlock.txt | wc -l


#b
tr -d '[:punct:]' < sherlock.txt |
tr -s '[:space:]' '\n' |
sed -n -E '/^(Sherlock|Holmes)$/p' | wc -l


#c
sed 's/^.\{70,\}$/Long line/' sherlock.txt


#d
sed -E 's/[[:upper:]][[:lower:]]+[[:space:]]+[[:upper:]][[:lower:]]+/Yuval/g' sherlock.txt


#e
sed 's/(/[/g; s/)/]/g' sherlock.txt

