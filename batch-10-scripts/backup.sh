#!/bin/bash 

<<readme
this is script for backup with 5 days rotation

Useage:
./backup.sh < path to your source> <path to backup folder>

readme

function display_usage () {

	echo "Usage: ./backup.sh <path to ypur source> <path to backup folder>"

}

if [ $# -eq 0 ]; then
	display_usage
fi


source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
source_dir=$2

function create_backup {

	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null

	if [ $? -eq 0 ]; then
		echo "backup generated successfully for ${timestamp}"
       	fi
}
create_backup
