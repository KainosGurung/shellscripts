#! /bin/bash

echo "Hello $USER"
echo "Stand by for file Creation..."

for ((i=1; i < 10; ++i))
do
	touch "file$i"
	echo "Created file$i"	
done
