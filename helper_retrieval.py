import pandas as pd
import os
import subprocess # Import the subprocess module

# Define the input and output CSV files
input_csv = 'train.csv' # From this part will load the files - test.csv and validation.csv
output_csv = 'train_exosite_sting_descriptors.csv' # The output for the first run

# Define the chunk size (number of rows per chunk)
chunk_size = 1000   # This chunk size is minimal on the system, so the system is good

# Define the folder name for the intermediate results
folder_name = 'intermediate_results'
os.makedirs(folder_name, exist_ok=True)

# Read the input data in chunks
chunks = pd.read_csv(input_csv, chunksize=chunk_size)

# Loop over the chunks
for i, chunk in enumerate(chunks):
    # Save the chunk to a temporary CSV file
    temp_csv = f'chunk_{i}.csv'
    chunk.to_csv(temp_csv, index=False)
    
    # Define the output CSV file for the second script
    output_csv_2 = os.path.join(folder_name, f'data_final_sting_descriptors_{i}.csv')
    
    # We run the second script with the temporary CSV file as input and the output CSV file as output
    subprocess.run(['python', 'sting_descriptor_retrieval2.py', temp_csv, output_csv_2])
    
    # Delete the temporary CSV file
    os.remove(temp_csv)

# Concatenate all the intermediate results into one final output
final_result = pd.concat([pd.read_csv(os.path.join(folder_name, f)) for f in os.listdir(folder_name)])
final_result.to_csv(output_csv, index=False)
