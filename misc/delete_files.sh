#! /bin/bash

echo "Hello $USER"
echo "Deleting files now"

typeset -i counter;
counter=0

for ((i=1; i < 10; ++i)) 
do
if rm -v "file$i" 2> /dev/null; then
	counter+=1
fi
done

echo "$counter files deleted"
