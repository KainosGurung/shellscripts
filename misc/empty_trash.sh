#! /bin/bash

#This program navigates to the Trash directory and deletes all
#file and sub directories inside

counter=0
cd ~/.local/share/Trash

for file in $(find)
do
	echo "Deleting file: $file..."
	rm -rf $file 2> log.txt
	let counter+=1
done

echo "$counter file(s) deleted"
