#!/bin/bash

# this script can input multiple users

<<notices
this is multi line cmment
jo kitni bhi line pr likh sakta hhu 
notices


for i in  {1..5}
do

     read -p "Enter the user name" user_name

     sudo useradd -m $user_name
     echo "User $user_name added  sucessfully"

done

