import csv
import re

# List of standard 3-letter amino acid codes
valid_residues = {
    'ALA', 'CYS', 'ASP', 'GLU', 'PHE', 'GLY', 'HIS', 'ILE', 'LYS', 'LEU',
    'MET', 'ASN', 'PRO', 'GLN', 'ARG', 'SER', 'THR', 'VAL', 'TRP', 'TYR'
}

# Input CSV file
input_csv = "protein_residues_complete_nosorting.csv"

# Output text files
all_present_file = "AFR_all_present_in_pocket.txt"
not_all_present_file = "AFR_not_all_present_in_pocket.txt"
invalid_residues_log = "AFR_invalid_residues.txt"

# Function to check if a residue is valid
def is_valid_residue(residue):
    # Extract the residue name (e.g., "ALA" from "ALA123")
    match = re.match(r"([A-Z]{3})\d+", residue)
    if match:
        residue_code = match.group(1)
        return residue_code in valid_residues
    return False

# Function to correct invalid residues by removing the 'B' prefix
def correct_invalid_residue(residue):
    return residue.replace('B', '', 1) if residue.startswith('B') else residue

# Function to check if all allosteric residues are in the pocket residues
def check_all_residues_in_pockets(allosteric_residues, pocket_residues):
    # Convert residue lists to sets for easy comparison
    allosteric_set = set([res.strip() for res in allosteric_residues.split(', ')])
    pocket_set = set([res.strip() for res in pocket_residues.split(', ')])
    
    # Check if all allosteric residues are present in the pocket residues
    return allosteric_set.issubset(pocket_set)

# Open the input CSV and output text files
with open(input_csv, 'r') as csvfile, open(all_present_file, 'w') as all_present_txt, open(not_all_present_file, 'w') as not_all_present_txt, open(invalid_residues_log, 'w') as invalid_log:
    csvreader = csv.DictReader(csvfile)
    
    # Iterate through each row in the CSV
    for row in csvreader:
        protein = row['Protein']
        chain = row['Chain']
        allosteric_residues = row['Allosteric_Site_Residues']
        pocket_residues = row['Pocket_Residues']
        
        # Validate and correct allosteric residues
        corrected_allosteric_residues = []
        invalid_allosteric = []
        
        for res in allosteric_residues.split(', '):
            if not is_valid_residue(res):
                corrected_res = correct_invalid_residue(res)
                if is_valid_residue(corrected_res):
                    corrected_allosteric_residues.append(corrected_res)
                else:
                    invalid_allosteric.append(res)
            else:
                corrected_allosteric_residues.append(res)

        # Validate pocket residues
        corrected_pocket_residues = []
        invalid_pocket = []
        
        for res in pocket_residues.split(', '):
            if not is_valid_residue(res):
                corrected_res = correct_invalid_residue(res)
                if is_valid_residue(corrected_res):
                    corrected_pocket_residues.append(corrected_res)
                else:
                    invalid_pocket.append(res)
            else:
                corrected_pocket_residues.append(res)
        
        # Log invalid residues, if any
        if invalid_allosteric or invalid_pocket:
            invalid_log.write(f"Invalid residues for {protein} {chain}:\n")
            if invalid_allosteric:
                invalid_log.write(f"  Allosteric: {', '.join(invalid_allosteric)}\n")
            if invalid_pocket:
                invalid_log.write(f"  Pocket: {', '.join(invalid_pocket)}\n")
        
        # Reformat corrected residues back to string format
        corrected_allosteric_residues_str = ', '.join(corrected_allosteric_residues)
        corrected_pocket_residues_str = ', '.join(corrected_pocket_residues)
        
        # Only check if pocket residues are available
        if pocket_residues != "No pocket residues found":
            if check_all_residues_in_pockets(corrected_allosteric_residues_str, corrected_pocket_residues_str):
                # Write protein and chain to all_present_in_pocket.txt if all allosteric residues are found in the pockets
                all_present_txt.write(f"{protein} {chain}\n")
            else:
                # Write protein and chain to not_all_present_in_pocket.txt if not all residues are found
                not_all_present_txt.write(f"{protein} {chain}\n")
        else:
            # Write to not_all_present_in_pocket.txt if there are no pocket residues at all
            not_all_present_txt.write(f"{protein} {chain} (No pocket residues)\n")

print(f"Results written to {all_present_file} and {not_all_present_file}. Invalid residues logged in {invalid_residues_log}.")
