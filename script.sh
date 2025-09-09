#!/bin/sh

# Check if a file exists
if [ -f file.txt ]; then
  echo "File exists!"
else
  echo "File does not exist!"
fi

# Loop over a list of items
for item in "apple" "banana" "orange"; do
  echo $item
done

# Define a function
greet() {
  echo "Hello, $1!"
}

# Call the function
greet "John"

