#!/bin/bash

<<usage
Create function for system informaion 
-RAM
-Storage used
-Top processes
usage
chack_memory() {
	free -h | awk 'NR==2 {print $7}'

}
check_storage() {
	df -h | awk 'NR==2 {print $4}'

}
check_most_mem_consuming_process() {
	ps aux --sort=-%mem | awk 'NR==2 {print $1,$2,$4}'

}
show_details() {

       	echo "=======SYSTEM DETAILS==========="
	echo "Availble memory"
	check_memory
	echo "Availble Storage"
       	check_storage
       	echo "most memory intensitive process"
	check_most_memy_consuming_process
}
show_details

