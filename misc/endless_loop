#! /bin/bash

cleanup(){
	echo
	echo "Exiting program"
	exit 
}

trap cleanup SIGHUP SIGINT SIGTERM

echo 'Endless while loop. Press ctrl+c to kill'
while [ true ]; do
	:
done
