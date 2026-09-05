#!/bin/bash

#if condition to used to check whether this or that
#if -> then -> else

a=10
b=20


if  [ $a -gt $b ]; then 
	echo "$a is bigger"
else
	echo "$b is  bigger"
fi


read -p "Enter the file path to be found" file_path
if  [ -f "$file_path" ]; then
	echo "File Exists"
else
	echo "File doesn't exist"
fi
