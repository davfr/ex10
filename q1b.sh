awk '{for(i=1;i<NF;i++) if($i=="Alice") count++} END{print count}' aliceinwonderland.txt

