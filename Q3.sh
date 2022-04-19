#! /bin/bash
file=$1
size=$(stat -c %s $file)
#Q3a part
echo size of the file quotes.txt in bytes : $size
#Q3b part
echo  number of lines in file quotes.txt :  $(wc -l $file | awk '{print $1}')
#Q3c part
echo number of words in file quotes.txt : $(wc -w $file | awk '{print $1}')
#Q3d part
awk '{print "Line No:<"1+i++">-""Count of Words:["NF"]"}' $file > Q3d.txt
cat Q3d.txt
#Q3e part
tr "[[:space:]&&~]" "\n" < quotes.txt | sed 's/[[:punct:]]$//'| sort -f | uniq -ic > 1.txt
sed '/[A-Za-z]/!d' 1.txt > 2.txt 
awk '{if($1 > 1) print "Word:<"$2"> - Count of repetition:["$1"]"}' 2.txt > Q3e.txt
rm 1.txt 2.txt
cat Q3e.txt
