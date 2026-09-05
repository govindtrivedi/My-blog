#!/bin/bash 

<< notices

this script  demostrat usages of for loops in shell scripting

notices


for car  in audi bmw tata maruti porche 
do
	echo $car
done

for (( i=10 ; i>0; i-- ))
do
	echo $i
done


for file in ./*.txt
do
	echo $file
done
