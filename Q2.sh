#! /bin/bash

grep -v '^$' quotes.txt > 1.txt
awk '!seen[$0]++' 1.txt > 2.txt
awk -F "~" '{print $2, "once said , \""$1"\""}' 2.txt > speech.txt # -F is for chnaging filed seperator 
rm 1.txt 2.txt
