#! /bin/bash

echo "Hello $USER, How old are you?"

while [ true ]; do
	read input

	#if the input is an integer, break
	if [[ $input =~ ^[0-9]+$ ]]; then
		break
	fi

	echo "Please input a positive integer"
done

if [[ $input -ge "16" ]]; then
	echo "Congratulations! You are of legal age to drink alcohol."

	if [[ $input -ge "18" ]]; then
		amount=$((($input-16)*100))
		echo "You have drunk $amount liters of alcohol thus far."
	fi
else
	echo "You must  wait $((16-$input)) year(s) before being legally allowed to drink."
fi


