#! /bin/bash

if [ "$#" -ne 1 ]; then
	echo "You must supply exactly one argument."
	echo "Example: $0 /etc"
	exit 1 # Return with value 1
fi

test -e "$1"
if [ "$?" -eq 0 ]; then
	echo "FIle or directory exist"
elif [ "$?" -eq 1 ]; then
	echo "File or directory not exist"
	exit 3

else
	echo "Unknown return value from test..."
	exit 1
fi
exit 0

