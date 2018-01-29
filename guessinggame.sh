#!/usr/bin/env bash
# File: guessinggame.sh
  
echo "Let's play a game!"  
echo "Take a guess of how many files you have:"
echo "Pick a number, any number!"; read guess

actual=$(ls -l | grep -v ^d | grep -v ^t | wc -l)

while [ $actual -ne $guess ]
do

if [ "$actual" -gt "$guess" ] 
then
	echo "You are too low!" 
	echo " Please try again!"; read guess
else 
	echo "You are too high!"
	echo "Please try again!"; read guess
fi

done
echo  "You are correct!"  
echo  "If you survive, please play again!"
