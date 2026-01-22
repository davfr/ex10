#!bin/bash


sed -n '/Sherlock\|Holmes/p' books/sherlockholmes.txt | wc -l


sed 's/Sherlock/Sherlock\n/g; s/Holmes/Holmes\n/g' books/sherlockholmes.txt | wc -l


sed -E 's/^.{70,}$/long line/' books/sherlockholmes.txt


sed -E 's/^[A-Z][a-z]+ [A-Z][a-z]+$/Shelly Orenstein/' books/sherlockholmes.txt 


sed -E 's/\(([^)]*)\)/[\1]/g' books/sherlockholmes.txt

