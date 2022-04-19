#! /bin/bash

grep -v '^$' quotes.txt > 1.txt #Q1a part 

awk '!seen[$0]++' 1.txt > Q1.txt  #Q1b part

rm 1.txt
