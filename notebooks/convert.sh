#!/bin/bash

# Check if the required arguments are provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <filename.ipynb>"
  exit 1
fi

# Store the input argument in a variable
filename="$1"

# Use jupyter command to convert the IPython Notebook to a Python file
jupyter nbconvert --to python "$filename"

# Check if conversion was successful
if [ $? -eq 0 ]; then
  echo "Conversion to Python file successful!"
else
  echo "Conversion failed."
fi
