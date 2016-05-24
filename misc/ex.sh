#! /bin/bash

#this script gives execute permissions to all sh files in this directory
files=$(ls *.sh)

counter=0

for file in $files
do
	echo "Adding +x permissions to file: $file"
	chmod +x $file
	let counter+=1
done

echo "$counter file(s) modified"
