#!/bin/bash
#a
awk 'END { print NR }' aliceinwonderland.txt

#b
awk '/ Alice / {count++} END{print count}' aliceinwonderland.txt

#c
awk '{
    for (i = 1; i <= NF; i++) {
        words[$i]++
    }
}
END {
    for (w in words) {
        if (words[w] == 1)
            print w
    }
}' aliceinwonderland.txt

#d
awk '{
    for (i = 1; i <= NF; i++) {
        words[$i]++
    }
}
END {
    for (w in words) {
            print words[w],w
    }
}' aliceinwonderland.txt|sort -nr|head -5

#e
awk '{
    for (i = 1; i <= NF; i++) {
        words[$i]++
    }
}
{
    for (w in words) {
        sum += words[w]
        count++
    }
}
END {print sum/count
    }' aliceinwonderland.txt


