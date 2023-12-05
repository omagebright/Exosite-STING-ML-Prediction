import pandas as pd
import os

# Define directories
protein_dir = 'allosteric_proteins'
complex_dir = 'protein-modulator_complexes'
output_dir = 'complete_LASA'

# Get list of protein files
protein_files = [f for f in os.listdir(protein_dir) if f.endswith('.res')]

for protein_file in protein_files:
    # Construct complex file name
    complex_file = protein_file.replace('.res', '_complex.res')

    # Check if complex file exists and is not empty
    complex_path = os.path.join(complex_dir, complex_file)
    if not os.path.exists(complex_path) or os.stat(complex_path).st_size == 0:
        print(f'Skipping file: {complex_file}')
        continue

    # Read protein file
    protein_df = pd.read_csv(os.path.join(protein_dir, protein_file), delim_whitespace=True, skiprows=1, skipfooter=1, engine='python', names=['residue_name', 'chain_name', 'number', 'protein_area'])

    # Read complex file
    complex_df = pd.read_csv(complex_path, delim_whitespace=True, skiprows=1, skipfooter=1, engine='python', names=['residue_name', 'chain_name', 'number', 'complex_area'])

    # Merge the two dataframes on 'residue_name', 'chain_name', and 'number'
    merged_df = pd.merge(protein_df, complex_df, on=['residue_name', 'chain_name', 'number'])

    # Calculate LASA
    merged_df['LASA'] = merged_df['protein_area'] - merged_df['complex_area']

    # Write output to file
    output_file = protein_file.replace('.res', '.txt')
    merged_df.to_csv(os.path.join(output_dir, output_file), sep='\t', index=False)
