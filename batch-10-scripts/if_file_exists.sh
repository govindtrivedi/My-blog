#!bin/bash

if [ $# -eq 0 ]
then 
	echo "pleases pass a file as ab arguments"
	echo "Usage: ./if_file_exists.sh <file_path>"
	exit 1
fi



if [ -f $1 ]
then 
	echo "File exists"
else
	echo  "file does'nt exists"
fi
