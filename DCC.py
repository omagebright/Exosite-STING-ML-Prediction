import os
import numpy as np
import pandas as pd
from Bio.PDB import PDBParser
import warnings
import re

# Directories for the actual and prediction sets
actual_afr_dir = 'actual_afr_set'
stingallo_pred_dir = 'stingallo_prediction_set'
passer_ensemble_dir = 'passer_ensemble_prediction_set'
passer_automl_dir = 'passer_automl_prediction_set'
passer_rank_dir = 'passer_rank_prediction_set'

# CSV file to store DCC results
dcc_result_file = 'dcc_results.csv'
success_rate_file = 'success_rate.txt'

# Initialize PDB parser
parser = PDBParser(QUIET=True)  # Suppress warnings inside the parser

# Function to get the centroid of a list of residues
def calculate_centroid(residues):
    coords = [atom.get_coord() for residue in residues for atom in residue.get_atoms()]
    if coords:
        centroid = np.mean(coords, axis=0)
        return centroid
    return None

# Function to extract residues from a PDB file based on residue numbers
def extract_residues(pdb_file, chain_id, residue_numbers):
    try:
        structure = parser.get_structure('protein', pdb_file)
        chain = structure[0][chain_id]
        residues = [chain[res_id] for res_id in residue_numbers if res_id in chain]
        return residues
    except Exception as e:
        print(f"Error extracting residues from {pdb_file}, Chain {chain_id}: {e}")
        return []

# Function to calculate DCC for predicted vs actual
def calculate_dcc(actual_residues, predicted_residues):
    if not actual_residues or not predicted_residues:
        return None  # Handle cases where no AFR exists or missing residues
    actual_centroid = calculate_centroid(actual_residues)
    predicted_centroid = calculate_centroid(predicted_residues)
    
    if actual_centroid is None or predicted_centroid is None:
        return None  # No valid centroids to calculate distance
    
    distance = np.linalg.norm(actual_centroid - predicted_centroid)
    return distance

# Helper function to extract residue numbers from the .pml file
def get_residue_numbers_from_pml(pml_file_path):
    residue_numbers = []
    if os.path.exists(pml_file_path):
        with open(pml_file_path, 'r') as f:
            lines = f.readlines()
            for line in lines:
                # Look for lines with 'resi' followed by a number
                match = re.findall(r'\bresi (\d+)', line)
                if match:
                    residue_numbers.extend([int(res_num) for res_num in match])
    return residue_numbers

# Function to process a single set and calculate DCC
def process_set(actual_afr_dir, pred_dir, set_name):
    dcc_data = []
    success_count = 0
    total_count = 0
    
    for folder in os.listdir(actual_afr_dir):
        if folder.endswith('_target'):  # Match actual target folders
            pdb_code, chain = folder.split('_')[:2]
            actual_pdb_file = os.path.join(actual_afr_dir, folder, f'{pdb_code}_protein.pdb')
            
            if set_name == "stingallo":
                pred_pdb_file = os.path.join(stingallo_pred_dir, f'{pdb_code}_{chain}_stingallo', f'{pdb_code}_protein.pdb')
                pml_file_path = os.path.join(stingallo_pred_dir, f'{pdb_code}_{chain}_stingallo', f'{pdb_code}_allosteric_sites.pml')
            elif set_name == "passer_ensemble":
                pred_pdb_file = os.path.join(passer_ensemble_dir, f'{pdb_code}_{chain}_passer_ensemble', f'{pdb_code}_protein.pdb')
                pml_file_path = os.path.join(passer_ensemble_dir, f'{pdb_code}_{chain}_passer_ensemble', f'{pdb_code}_passer_ensemble_allosteric_sites.pml')
            elif set_name == "passer_automl":
                pred_pdb_file = os.path.join(passer_automl_dir, f'{pdb_code}_{chain}_passer_automl', f'{pdb_code}_protein.pdb')
                pml_file_path = os.path.join(passer_automl_dir, f'{pdb_code}_{chain}_passer_automl', f'{pdb_code}_passer_automl_allosteric_sites.pml')
            elif set_name == "passer_rank":
                pred_pdb_file = os.path.join(passer_rank_dir, f'{pdb_code}_{chain}_passer_rank', f'{pdb_code}_protein.pdb')
                pml_file_path = os.path.join(passer_rank_dir, f'{pdb_code}_{chain}_passer_rank', f'{pdb_code}_passer_rank_allosteric_sites.pml')
            else:
                continue  # Unknown set

            if not os.path.exists(pred_pdb_file) or not os.path.exists(pml_file_path):
                print(f"Prediction file or PML file not found for {pdb_code} Chain {chain} in {set_name}. Skipping...")
                continue  # Skip if the prediction file or PML file doesn't exist
            
            # Get the list of actual and predicted residue numbers (from the .pml files)
            actual_residue_numbers = get_residue_numbers_from_pml(os.path.join(actual_afr_dir, folder, f'{pdb_code}_allosteric_sites.pml'))
            pred_residue_numbers = get_residue_numbers_from_pml(pml_file_path)
            
            if not actual_residue_numbers or not pred_residue_numbers:
                print(f"No AFRs found for {pdb_code} Chain {chain} in {set_name}. Skipping...")
                continue  # Skip if no AFRs found in either actual or predicted
            
            # Extract residues from PDB files
            actual_residues = extract_residues(actual_pdb_file, chain, actual_residue_numbers)
            predicted_residues = extract_residues(pred_pdb_file, chain, pred_residue_numbers)
            
            # Calculate DCC
            dcc = calculate_dcc(actual_residues, predicted_residues)
            if dcc is not None:
                dcc_data.append([pdb_code, chain, dcc, set_name])
            
            # Increment counters for success rate
            if dcc is not None and dcc <= 4.0:
                success_count += 1
            total_count += 1
    
    return dcc_data, success_count, total_count

# Process the four sets: stingallo, passer_ensemble, passer_automl, passer_rank
dcc_data = []

# Process stingallo set
stingallo_dcc_data, stingallo_success, stingallo_total = process_set(actual_afr_dir, stingallo_pred_dir, 'stingallo')

# Process passer_ensemble set
passer_ensemble_dcc_data, passer_ensemble_success, passer_ensemble_total = process_set(actual_afr_dir, passer_ensemble_dir, 'passer_ensemble')

# Process passer_automl set
passer_automl_dcc_data, passer_automl_success, passer_automl_total = process_set(actual_afr_dir, passer_automl_dir, 'passer_automl')

# Process passer_rank set
passer_rank_dcc_data, passer_rank_success, passer_rank_total = process_set(actual_afr_dir, passer_rank_dir, 'passer_rank')

# Merge DCC results for all sets into a single output with 5 columns
dcc_result = {}
for pdb_code, chain, dcc_stingallo, _ in stingallo_dcc_data:
    dcc_result[(pdb_code, chain)] = {'DCC_stingallo': dcc_stingallo}

for pdb_code, chain, dcc_ensemble, _ in passer_ensemble_dcc_data:
    if (pdb_code, chain) in dcc_result:
        dcc_result[(pdb_code, chain)]['DCC_passer_ensemble'] = dcc_ensemble
    else:
        dcc_result[(pdb_code, chain)] = {'DCC_passer_ensemble': dcc_ensemble}

for pdb_code, chain, dcc_automl, _ in passer_automl_dcc_data:
    if (pdb_code, chain) in dcc_result:
        dcc_result[(pdb_code, chain)]['DCC_passer_automl'] = dcc_automl
    else:
        dcc_result[(pdb_code, chain)] = {'DCC_passer_automl': dcc_automl}

for pdb_code, chain, dcc_rank, _ in passer_rank_dcc_data:
    if (pdb_code, chain) in dcc_result:
        dcc_result[(pdb_code, chain)]['DCC_passer_rank'] = dcc_rank
    else:
        dcc_result[(pdb_code, chain)] = {'DCC_passer_rank': dcc_rank}

# Create a DataFrame with the results
dcc_result_list = []
for (pdb_code, chain), dcc_values in dcc_result.items():
    dcc_stingallo = dcc_values.get('DCC_stingallo', 'N/A')
    dcc_passer_ensemble = dcc_values.get('DCC_passer_ensemble', 'N/A')
    dcc_passer_automl = dcc_values.get('DCC_passer_automl', 'N/A')
    dcc_passer_rank = dcc_values.get('DCC_passer_rank', 'N/A')
    dcc_result_list.append([pdb_code, chain, dcc_stingallo, dcc_passer_ensemble, dcc_passer_automl, dcc_passer_rank])

dcc_df = pd.DataFrame(dcc_result_list, columns=['PDB_Code', 'Chain', 'DCC_stingallo', 'DCC_passer_ensemble', 'DCC_passer_automl', 'DCC_passer_rank'])
dcc_df.to_csv(dcc_result_file, index=False)

# Calculate success rates
stingallo_success_rate = stingallo_success / stingallo_total if stingallo_total > 0 else 0
passer_ensemble_success_rate = passer_ensemble_success / passer_ensemble_total if passer_ensemble_total > 0 else 0
passer_automl_success_rate = passer_automl_success / passer_automl_total if passer_automl_total > 0 else 0
passer_rank_success_rate = passer_rank_success / passer_rank_total if passer_rank_total > 0 else 0

# Write success rates to file
with open(success_rate_file, 'w') as f:
    f.write(f"Stingallo Success Rate: {stingallo_success_rate:.2%}\n")
    f.write(f"Passer Ensemble Success Rate: {passer_ensemble_success_rate:.2%}\n")
    f.write(f"Passer Automl Success Rate: {passer_automl_success_rate:.2%}\n")
    f.write(f"Passer Rank Success Rate: {passer_rank_success_rate:.2%}\n")

print("DCC calculations and success rate evaluation complete.")
