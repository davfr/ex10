#!/bin/bash

#a

sed -n '/\<Sherlock\>\|\<Holmes\>/p' sherlockholmes.txt | wc -l 

#b

tr -d '[:punct:]' < sherlockholmes.txt | tr -s [:space:] '\n' | sed -n -E  '/^(Sherlock|Holmes)$/p' | wc -l

#c

sed -E 's/^.{70,}$/Long line/' sherlockholmes.txt

#d

sed -E 's/\<[A-Z][a-z]{1,} [A-Z][a-z]{1,}\>/Gali Davidov/g' sherlockholmes.txt

#e

sed 's/)/]/g' sherlockholmes.txt | sed 's/(/[/g'

