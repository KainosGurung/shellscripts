#! /bin/bash

counter=0

#if no args are passed then
if [[ $1 = "" ]]; then
	files=$(ls) #Get all files in the current directory
	echo "Working on $(pwd)"
else
	if [[ -d $1 ]]; then #if arg is a directory
		files=$(ls $1)
		echo "Working on $1"
	else
		echo "invalid directory"
		exit
	fi
fi

for i in $files
do
	#if i is a file and does not contain an extension
	if [[ -f $i ]] && [[ $i != *"."* ]]
	then
		echo "appending .sh extension and +x to file: $i"
		chmod +x $i #give execute permissions to all users
		mv $i $i.sh #append .sh extension to file
		let counter+=1
	fi
done

echo "$counter file(s) modified"
