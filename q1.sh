#!/bin/bash
#q1.sh

file="aliceinwonderland.txt"

# question a

awk 'END { print "The book has", NR, "rows" }' "$file"

# question b

echo

awk '{ total += gsub(/ Alice /, "") } END { print "The word Alice appears", total, "times" }' "$file"

# question c

echo

awk '
{
	for (i = 1; i <= NF; i++) {
		count[$i]++
	}
}
END {
	print "Words that appear only once:"
	for (word in count) {
		if (count[word] == 1)
			print word
	}
}
' "$file"

# question d

echo

echo "The top 5 most common words in the book are:"

awk '
{
	for (i = 1; i <= NF; i++) {
		count[$i]++
	}
}
END {
	for (word in count) {
		printf "%d %s\n", count[word], word
	}
}
' "$file" | sort -nr | head -5

# question e

echo

awk '
{
	for (i = 1; i <= NF; i++) {
		tot_length += length($i)
		tot_words++
	}
}
END {
	print "The average word length in the book is", tot_length / tot_words
}
' "$file"


















