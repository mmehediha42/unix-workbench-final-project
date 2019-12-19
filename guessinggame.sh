#!/usr/bin/env bash
# File: guessinggame.sh

echo "Please guess the number of files in the working directory!"
echo "Your guess: "
read guess

# Function  to guess the file number

function get_file_number {
	local number=$(ls -l | wc -l)-1
	echo $number
}

# The file number will be stored in the correct variable
correct=$(get_file_number)

while [[ $guess -ne $correct ]]
do
	if [[ $guess -gt $correct ]]
	then
		echo "Sorry, your guess was too high."
	else 
		echo "Sorry, your guess was too low."
	fi
	echo
	echo "Guess again please: "
	read guess
done

echo "Congratulations! You guessed the correct number!"

