#!/bin/bash

#this script takes the pacakages name from user and install it 

read -p "Enter the package name" package_name

echo "checking if package is already installled..."


 #condition [-g -l -f -d]
 #commonds nouse quar brackets []

if  dpkg -s $package_nam >/dev/null >2&1 ; then
	echo "$package_name already installed"
	exit 1
else
	echo "Continuing installation ..."
fi


echo "Updating system & Installing $pacakage_name"
sudo apt-get update
sudo apt install $package_name -y


read -p "Enter the services nama" service_name
sudo systemctl start $servicee_name
systemctl status $service_name


