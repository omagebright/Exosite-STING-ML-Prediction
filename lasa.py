# This script subtract per-residue area, complex from apo

import os

# Define the directories
protein_dir = 'allosteric_proteins'
complex_dir = 'protein-modulator_complexes'
lasa_dir = 'LASA'

# Create LASA directory if it doesn't exist
if not os.path.exists(lasa_dir):
    os.makedirs(lasa_dir)

# Get the list of protein files
protein_files = [f for f in os.listdir(protein_dir) if f.endswith('.res')]

for protein_file in protein_files:
    # Open the protein file and read the ASA values
    with open(os.path.join(protein_dir, protein_file), 'r') as f:
        protein_asa = []
        for line in f:
            if line.strip():
                try:
                    asa_value = float(line.split()[-1])
                    protein_asa.append(asa_value)
                except ValueError:
                    continue

    # Open the corresponding complex file and read the ASA values
    complex_file = protein_file.replace('.res', '_complex.res')
    complex_path = os.path.join(complex_dir, complex_file)
    if not os.path.isfile(complex_path):
        print(f"Skipping {complex_file} as it does not exist.")
        continue

    with open(complex_path, 'r') as f:
        complex_asa = []
        for line in f:
            if line.strip():
                try:
                    asa_value = float(line.split()[-1])
                    complex_asa.append(asa_value)
                except ValueError:
                    continue

    # Calculate the LASA values
    lasa = [p - c for p, c in zip(protein_asa, complex_asa)]

    # Write the LASA values to a new file in the LASA directory
    with open(os.path.join(lasa_dir, protein_file.replace('.res', '.txt')), 'w') as f:
        for value in lasa:
            f.write(str(value) + '\n')
