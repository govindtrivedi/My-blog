#!/bin/bash 


<<usage
./fuction.sh hello
inside fuction call
install_package docker.io
usage


echo "$1 is the main argument passed to the script" 
haldi() {
echo "haldi lagao"
echo "pani mai daal do"
}	

# fuction define

install_packages() {

	echo "$1 is the local arguments passed to fuction"

	sudo apt-get install $1

}
install_packages  docker.io  #fuction call
