#!/usr/bin/env bash
# File: guessinggame.sh

echo "Let's play a game!" 
echo "Take a guess of how many directories you have:"; read guess

actual=$(ls -l | grep -c ^d)
echo $actual
echo $guess
if ("$actual" == "$guess") {
	echo "Good job!  You are correct!"
else {
	echo "So sorry, you are wrong!"
}

fi
