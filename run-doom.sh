#!/bin/bash
# Run prboom-plus with an wad file.

# Get choice number.
ls /my-downloads/Wads	# custimise path to your wads files
read -p "Enter your choice: " choice; echo choice: $choice
#upper="$(ls /my-downloads/Wads | wc -l)"
regex="^[0-9]+$"

# Run the number or quit with error message.
if [[ "$choice" =~ $regex ]]; then
	echo chosen choice: $choice 
	prboom-plus -iwad /my-downloads/Wads/"$(ls /my-downloads/Wads | awk -v c="$choice" 'NR==c')"
else
	echo "wrong number!"
fi
