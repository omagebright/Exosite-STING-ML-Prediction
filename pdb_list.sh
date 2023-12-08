#!/bin/bash

# Change to the directory containing the files
cd complete_LASA

# Initialize an empty file for pdb codes
> pdb_code.txt

# Loop through all the .txt files in the directory
for file in *.txt; do
    # Extract pdb_code between underscores and .txt
    pdb_code=$(echo "$file" | cut -d'_' -f2 | cut -d'.' -f1)
    
    # Append the pdb_code to pdb_code.txt
    echo "$pdb_code" >> ../pdb_code.txt
done

echo "PDB codes have been saved to pdb_code.txt"
