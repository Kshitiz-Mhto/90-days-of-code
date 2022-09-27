#!/usr/bin/bash

# Program to tell a person's fortune

echo -e "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~Fortune_Teller~~~~~~~~~~~~~~~~~~~~~~~~~"
# Array
: '
Shell script Array is a variable which contains multiple values may be of same type or different type
since by default in shell script everything is treated as a string.
An array is zero-based ie indexing start with 0.
arr={a,9,uu)

arr1=("9","0909")
arr1=(9,jgvjk,0909)
echo ${arr1[@]} ---> show the raw version of array 
echo ${ARRAYNAME[*]}
echo ${arr[1]}  ---> accessing the elements
The arr variable must be in that declare list.
View your array variable using the declare command and the -p flag.
declare={arr,arr1}
declare -p arr

'
: '
1.In Indirect declaration, We assigned a value in a particular index of Array Variable.
No need to first declare.

     ARRAYNAME[INDEXNR]=value
2.In Explicit Declaration, First We declare array then assigned the values.

     declare -a ARRAYNAME
3.In Compount Assignment, We declare array with a bunch of values. We can add other values later too.

    ARRAYNAME=(value1 value2  .... valueN) or
    ARRAYNAME=([1]=10 [2]=20 [3]=30)
    To Print All elements
    echo ${ARRAYNAME[*]}  
    echo ${ARRAYNAME[@]}  
'
#Make sure any values with spaces are in proper quotes
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM%6 ))

GET_FORTUNE(){
   if [[ !$1 ]]
    then
        echo ask y or n questions?
    else
        echo try again!!!!
    fi
    read quo
    return 77
}
GET_FORTUNE
ret=$?
echo "$ret"

until [[ $quo =~ \?$ ]]
do
    #adding argument to the function
    GET_FORTUNE
done
echo -e "\n ${RESPONSES[$N]} \n"


[[ hello =~ el ]]; echo $? #--> allow for patter matching
 [[ "hello world" =~ "lo wor" ]]; echo $?
 # Make sure not to use quotes around the pattern when using regex characters it
#making sure the string is staring with h letter
 [[ "hello world" =~ ^h ]]; echo $?
#should use this..
[[ "hello" =~ ^h.+d$ ]]; echo $?
#----------------------------------

var="hello world"
[[ $var == "hello world" ]]; echo $?
#-----------------------------------

#check if your var ends with ? by using pattern \?$

[[ $var =~ \d$ ]]; echo $?
[[ help? == \?$ ]]; echo $? 


