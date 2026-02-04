awk 'BEGIN{FS="[^A-Za-z]+"} {for(i=1;i<=NF;i++){sum+=length($i); count++}} END{print sum/count}' aliceinwonderland.txt

