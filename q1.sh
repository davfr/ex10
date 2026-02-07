<<<<<<< HEAD
This is q1 answer
=======
#a
echo "a.the number of rows are:"
cat aliceinwonderland.txt | awk 'END{print NR}'

#b
echo "b.the number of Alice shown:"
cat aliceinwonderland.txt | awk '/ Alice / {count++} END{print count}'

#c
cat aliceinwonderland.txt | 
awk '
{ 
	for ( i=1 ; i <= NF; i++ )
		count [$i]++
}
END {
	for (c in count) 
		if (count[c] == 1)
			print c
} '

#d
cat aliceinwonderland.txt | awk '
{
	for (i=1 ; i<=NF ; i++)
		count[$i]++
}
END {
	for (c in count)
		print count[c],c
}' | sort -nr | head -5

#e
cat aliceinwonderland.txt |
awk '{
  for (i = 1; i <= NF; i++)
	{
    		counterlen += length($i)
    		countersum++
	}
}
END {
  print counterlen / countersum
}'
>>>>>>> dbc7ccf (q1 and q2 anwser)
