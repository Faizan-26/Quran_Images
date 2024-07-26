#!/bin/bash

# Directory containing the files (set this to your directory)
DIRECTORY="./usmani"

# Navigate to the directory
cd "$DIRECTORY" || { echo "Directory not found!"; exit 1; }

# Loop through files matching the pattern
for file in quranPage_*; 
do
    # Check if the file exists (to prevent issues if no files match)
    if [ -f "$file" ]; then
        # Extract the number part from the file name
        number=${file#quranPage_}

        # Define the new file name
        newFileName="usmani_$number"

        # Rename the file
        mv "$file" "$newFileName"

        # Optional: print the rename action
        echo "Renamed $file to $newFileName"
    fi
done

