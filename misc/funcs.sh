#! /bin/bash

#returns the greater of two numbers
max(){
	if  [ $1 -ge $2 ]
	then
		echo $1
	else
		echo  $2
	fi
}


#passes the command line arguements 1 and 2
#to the max function to calculate the greater
#of the two numbers
x=$(max $1 $2 )
echo $x

