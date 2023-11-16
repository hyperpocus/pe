#!/bin/bash

# Function to generate a random date
generate_random_date() {
  start_date="1990-01-01"
  #end_date=$(date -j "+%Y-%m-%d")
  end_date="2004-12-31"
  random_epoch=$(shuf -i $(date -j -f '%Y-%m-%d' "$start_date" +%s)-$(date -j -f '%Y-%m-%d' "$end_date" +%s) -n 1)
  random_date=$(date -r "$random_epoch" "+%d%m%Y")
  echo "$random_date"
}

# File to be processed
file_path="people"

# Check if the file exists
if [ ! -f "$file_path" ]; then
  echo "Error: File not found!"
  exit 1
fi

# Create a temporary file for the modified content
temp_file=$(mktemp)

# Iterate through each line of the original file
while IFS= read -r line; do
  # Generate a random date for each line
  random_date=$(generate_random_date)
  
  # Substitute the date in the line and append it to the temporary file
  echo "$line" | sed -e "s|to_date('10112023','DDMMYYYY')|to_date('$random_date','DDMMYYYY')|g" >> "$temp_file"
done < "$file_path"

# Replace the original file with the modified content
mv "$temp_file" "$file_path"

echo "Replacement complete!"
