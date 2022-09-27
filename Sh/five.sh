#!/usr/bin/bash

bash ./bingo.sh

echo -e "\n~~~~~~~~~~~~~~"

i=$1
while [[ $i < 5  ]]
do 
    bash ./bingo.sh
    (( i++ )) 
done




