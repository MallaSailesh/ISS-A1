#! /bin/bash

oldIFS="$IFS"
IFS=","
read -a arr
for (( j=0;j<${#arr[*]}-1;j++ ))
do
	for (( i=0;i<${#arr[*]}-1;i++ ))
	do
		if [[ ${arr[$i]} -gt ${arr[$i+1]} ]]
		then 
			temp=${arr[$i]}
			arr[$i]=${arr[$i+1]}
			arr[$i+1]=$temp
			cnt=$cnt+1
		fi
	done
done
echo ${arr[*]}
IFS="$oldIFS"
