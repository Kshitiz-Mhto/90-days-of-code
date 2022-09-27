#!/usr/bin/bash #---> shebang
which bash
echo $* #--> accepts command line arguments and jst prints
#echo $2 #--> specifing the which arg to echo
		#Conditional
i=$1 #initializing value from command line arguments
if [[ $1==arg1 ]] # in CLI ./countdown.sh arg1  
then
  echo true
else
  echo false
fi

if [[ $2 -eq 33 ]]
then
 echo true
else
 echo false
fi

#help if
[[ 99 -le 5 ]]; echo $? #execute the expression and return the exit status of the command

#ls -y; echo $? # command exit with value other than 0;

# for checking existence of file
[[ -a countdown.sh ]]; echo $? 
[[ -a bad_text ]]; echo $?
[[ -x countdown.sh || 4 -lt 5 ]]; echo $? # which show we have access to execute this file or not

#		for- loop
: '
for (( i =4; i>0; i-- ))
do
 echo $i
done
'
echo -e "\n If and For\n"

if [[ $1 == arg1 || $2 -lt 5 ]]
then 
 for (( i =0; i<5; i++ ))
 do 
   echo $i
   sleep 1
 done
else
 echo "hello, twat rerun with different command-line args"
fi


# 		while-loop

while [[ i -lt 5 ]] 
do 
 echo $i
 sleep 1
 (( i++ ))
done
