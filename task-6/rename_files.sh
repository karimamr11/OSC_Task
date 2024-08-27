#!/bin/bash

# Check if directory is provided
if [[ "$#" -ne 1 ]]
  then
      echo "Usage: $0 directory"
      exit 1
fi

# Get the directory
dir="$1"

# Verify that the directory exists
if [[ ! -d "$dir" ]]
  then
      echo "Error: Directory does not exist."
      exit 1
fi

# Rename all .txt files in the directory
for file in "$dir"/*.txt
do
    if [[ -f "$file" ]]
      then
          mv "$file" "$dir/old_$(basename "$file")"
    fi
done

echo "Renaming complete."

