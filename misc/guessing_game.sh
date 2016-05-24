#! /bin/bash

target=`expr $RANDOM % 100`
guess=-1
echo "Hello $USER, can you guess what my number is?"
echo "enter \"exit\" to quit"
echo $target
while [[ true ]]
do
	read guess

	if [[ $guess = "exit" ]]
	then
		echo "Goodbye!"
		break
	elif [[ $guess =~ ^[0-9]+$ ]]; then #if the input was a number, compare
		if [[ $guess -gt $target ]]; then
			echo "Too High!"
		elif [[ $guess -lt $target ]]; then
			echo "Too Low!"
		elif [[ $guess -eq $target ]]; then
			echo "You have guessed wisely young padwan"
			break
		fi
	else
		echo "Please enter a number"
	fi
done

