#! /bin/bash

touch tmp/ 2> /dev/null

#if the touch fails, create the tmp directory
if [[ $? -gt 0 ]]; then
	mkdir tmp
fi

cd tmp
FILE='file_list.txt'
touch $FILE

#append random numerical values into the file
for ((i=0; i < ($RANDOM % 100 +1); ++i )); do
	echo  $RANDOM >> $FILE
done

#sort numerically and insert result into a new file
sort -n < $FILE > "sorted_$FILE"

#output results that end with 1 
#enable color since we're running from inside a bash script
#it's defined in .bashrc but that file is not loaded by scripts
#http://stackoverflow.com/questions/9550885/grep-loses-coloring-when-run-from-bash-script
grep --color -e ".*1$" sorted_file_list.txt 
