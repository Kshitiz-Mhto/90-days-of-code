
#!/usr/bin/bash

echo -e "\n~~~~~ibergx00-author~~~~~"
echo -e "~~~~~~~$LANG~~~~~~"

num=$RANDOM

echo $num
num1=90
num2=30
#limiting the random value
echo $((RANDOM%44+1))
echo $(( num1+=90 ))
echo $((num2*10+66))
number=$(( RANDOM%75+1 ))
TEXT="Hello World, "

if [[ $number -le 15 ]]
then
    echo $TEXT B:$number
elif [[ $number -le 30 ]]
then
    echo $TEXT less than 30 B:$number
else [[ $number -gt 30 ]]
    echo $TEXT greater than 30  B:$number 
fi
