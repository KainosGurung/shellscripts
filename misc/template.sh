#! /bin/bash

if [[ $1 = "" ]]; then
	echo "Please provide script name"
	exit 1
fi

touch $1
if [[ -s $1 ]]; then #if file size is greater than zero
	echo 'File exists. Overwrite? (Y/N)'
	read input

	if [[ $input != 'Y' ]] && [[ $input != 'Yes' ]]; then
		echo "exiting"
		exit
	fi
fi

echo "#! /bin/bash" > $1
chmod +x $1
vim $1
