import os
import pandas as pd

# Define directory
exosite_dir = 'exosite_annotated'

# Get list of .txt files in the directory
txt_files = [f for f in os.listdir(exosite_dir) if f.endswith('.txt')]

# Initialize an empty dataframe to store all data
all_data = pd.DataFrame()

for txt_file in txt_files:
    # Extract PDB code from file name
    pdb_code = txt_file.split('_')[1].split('.')[0]

    # Read .txt file into a dataframe
    df = pd.read_csv(os.path.join(exosite_dir, txt_file), delim_whitespace=True)

    # Add PDB code as the first column
    df.insert(0, 'pdb_code', pdb_code)

    # Append dataframe to all_data
    all_data = all_data.append(df, ignore_index=True)
    
    # Drop rows with NaN values
    all_data = all_data.dropna()
    
    # Drop rows where any column has 'HOH'
    all_data = all_data[~all_data.isin(['HOH']).any(axis=1)]

# Write all_data to a single .csv file
all_data.to_csv('exosite_datamart.csv', index=False)

descriptor_retrieval = all_data[['Class', 'pdb_code', 'chain_name', 'number']]
descriptor_retrieval.to_csv('sting_descriptor_retrieval_data.csv', index=False)
