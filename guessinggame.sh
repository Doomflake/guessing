#!/usr/bin/env bash
# File: guessinggame.sh

echo "Let's play a game!" 
echo "Take a guess of how many directories you have:"; read guess

actual=$(ls -l | grep -c ^d)

while [ $actual -ne $guess ]
do

if [ "$actual" -gt "$guess" ] 
then
	echo "You are too low!  Please try again!"; read guess
else 
	echo "You are too high!"
	echo "Please try again!"; read guess
fi

done
echo  "You are correct!   If you survive, please play again!"
