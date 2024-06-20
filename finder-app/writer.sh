#!/bin/bash

if [ $# -eq 2 ]; then
	WRITEPATH=$1
	WRITESTR=$2
 
		
	DIR_PATH=$(dirname "$WRITEPATH")


	mkdir -p "$DIR_PATH"

	echo "$WRITESTR" > "$WRITEPATH"	
	exit 0
else
	echo "Argument count is wrong. You have to have 2 arguments: <writefile> <writestr>"
	exit 1
fi
