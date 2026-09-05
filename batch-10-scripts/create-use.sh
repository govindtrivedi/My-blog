#!/bin/bash


<< usage
-take user and input
-take password as input
-create the  user
-check if user already  exists
usage
#fuction defintion
create_user() {
read -p "enter the username" username 
read -p "enter the passwaord" password

if id "$username" &>/dev/null; then
    echo "User '$username'  exists,exiting the code."
    exit 1
else
    echo "User '$username' does not exist and will be cretated...."
fi

sudo useradd -m $username -p $password

echo "username added sucessfully

}

