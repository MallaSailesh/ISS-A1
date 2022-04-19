#! /bin/bash
read string
#Q5a,b part
for ((i = ${#string[0]} - 1; i >= 0; i--)) #we should not use ${string[*]}-1 because there is only element .we want the number of characters in the first element so use ${#string[0]} or ${#string}
do
    val=${string:$i:1}
    string_reverse="$string_reverse$val"
    val=$(echo $val | tr "0-9a-zA-Z" "1-9a-zA-Za") 
    subsequent=$subsequent$val;
done

echo "$string_reverse"
echo "$subsequent"

#Q5c part
for ((i = (${#subsequent}/2)-1 ; i >=0 ; i-- )) 
do
    half="$half${subsequent:$i:1}" 
done
for ((i = (${#subsequent}/2) ; i <${#subsequent} ; i++ )) 
do
    half="$half${subsequent:$i:1}" 
done
echo "$half"
