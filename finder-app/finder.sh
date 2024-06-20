#!/bin/bash

if [ $# -eq 2 ]; then
	FILEPATH="$1"
        STRING="$2"

	if [ ! -d "$FILEPATH" ]; then
		echo "$FILEPATH is not a directory!"
		exit 1
	fi
	num_files=0
	num_lines=0
	
	while IFS= read -r -d '' file; do
		match_count=$(grep -c "$STRING" "$file")
		num_files=$((num_files + 1))
		num_lines=$((num_lines + match_count))
	done < <(find "$FILEPATH" -type f -print0 )
	echo "The number of files are $num_files and the number of matching lines are $num_lines"
	exit 0
else
	echo "Wrong number of parameters! \nIt should be <folder> <searchstr>"
	exit 1
fi

