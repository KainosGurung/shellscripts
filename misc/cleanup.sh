#! /bin/bash

counter=0

delete_file(){
	echo "Delete file: $1? (Y/N)"
	read input
	if [[ $input = 'y' || $input = 'Y' ]]; then
		echo "Deleting $1"
		rm -rf $1
	fi
	let counter+=1
}

for file in $(ls -a); do
	if [[ -f $file ]]; then
		#if the filename starts with a dot followed by an 
		if [[ $file =~ ^\.[a-zA-Z0-9]+ ]]; then #alphanumeric char
			delete_file $file
		fi

		#if the file ends in a ~
		if [[ $file =~ ~$ ]]; then
			delete_file $file
		fi
	fi
done

echo "$counter file(s) deleted"
