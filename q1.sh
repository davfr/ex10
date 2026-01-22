#I used the chat in order to learn and sharpen my skills in awk function.
#There was no single prompt here, but rather an in depth learning dialogue.

awk 'END {print NR}' aliceinwonderland.txt 

awk 'BEGIN {count =0} { for (i = 1; i <=NF; i++) if ($i == "Alice") count++}  END {print count}' aliceinwonderland.txt 

awk '{for (i=1; i<=NF; i++) a[$i]++} END {for (k in a) if (a[k] == 1) print k}' aliceinwonderland.txt 

awk '{for (i=1; i<=NF; i++) a[$i]++} END {for (k in a) print k,a[k]}' aliceinwonderland.txt | sort -k2 -n | tail -5

awk 'BEGIN {count = 0; number = 0} {for (i=1; i<=NF; i++) {count = count + length($i); number++}} END {print count/number}' aliceinwonderland.txt 
