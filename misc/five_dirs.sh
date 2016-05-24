#! /bin/bash

if [[ $# != "1" ]]; then
	echo "Usage: $0 [dir-name]"
fi

if [[ ! -d $1 ]]; then
	echo "Usage: $0 [dir-name]"
fi

cd $1

#print the 5 largest files in the directory
ls -S | head -5

#print the 5 last modified files in the directory
ls -c | head -5
