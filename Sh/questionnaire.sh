#!/bin/bash # ---> shebang
echo -e "\n~~ QUESTIONNAIRE ~~\n" #for more just man echo or echo --help
echo hello world
ls 
QUESTION1="What's your name?" #variable
echo $QUESTION1 #printing
read name #reading
# echo HELLO $name 
echo $QUESTION2"WHERE ARE U FROM?" #defining and printing
read place
echo "$place"", nice place" #printing in other form
# echo $name from $place 
echo $QUESTION3"WEBSITE"
read website 
echo -e "\nHello, $name from $place. Your fav website is $website"

