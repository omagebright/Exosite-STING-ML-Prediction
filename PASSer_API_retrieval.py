import os
import requests
import shutil

# PASSer API URL
api_url = 'https://passer.smu.edu/api'

# Directories
stingallo_prediction_set_dir = 'stingallo_prediction_set'
passer_ensemble_dir = 'passer_ensemble_prediction_set'
passer_automl_dir = 'passer_automl_prediction_set'
passer_rank_dir = 'passer_rank_prediction_set'

# Create the passer directories if they don't exist
for dir_name in [passer_ensemble_dir, passer_automl_dir, passer_rank_dir]:
    if not os.path.exists(dir_name):
        os.makedirs(dir_name)

# Function to query PASSer API and get AFR residues for different models
def get_passer_prediction(pdb_code, chain_name, model):
    data = {"pdb": pdb_code, "chain": chain_name, "model": model}
    response = requests.post(api_url, data=data)
    
    if response.status_code == 200:
        return response.json()
    else:
        print(f"Error: Could not retrieve results for {pdb_code} chain {chain_name} using model {model}")
        return None

# Function to generate .txt content for AFR (Prediction 1 only)
def generate_txt_content(prediction_data):
    txt_content = "PASSer Allosteric Site Forming Residues (Top Prediction):\n\n"
    # Process only the first prediction ("1")
    if "1" in prediction_data:
        value = prediction_data["1"]
        txt_content += f"Top Prediction: {value['prob']} probability\n"
        txt_content += f"Residues: {value['residues']}\n\n"
    else:
        txt_content += "No top prediction available.\n"
    return txt_content

# Function to generate .pml content for AFR (Prediction 1 only)
def generate_pml_content(pdb_code, chain_name, prediction_data):
    pml_content = f"# PyMOL script to highlight allosteric sites in {pdb_code}\n"
    pml_content += f"fetch {pdb_code}\n"
    pml_content += "hide everything\n"
    pml_content += f"show cartoon, chain {chain_name}\n"
    pml_content += f"color spectrum, chain {chain_name}\n"
    
    # Process only the first prediction ("1")
    if "1" in prediction_data:
        value = prediction_data["1"]
        residues = value['residues'].split('resid ')[-1]
        for res_num in residues.split():
            pml_content += f"select resi {res_num} and chain {chain_name}\n"
            pml_content += f"show surface, resi {res_num} and chain {chain_name}\n"
            pml_content += f"color green, resi {res_num} and chain {chain_name}\n"
            pml_content += f"set transparency, 0.2, resi {res_num} and chain {chain_name}\n"
    
    pml_content += f"zoom chain {chain_name}\n"
    return pml_content

# Automatically build pdb_chain_list from the subfolder names in stingallo_prediction_set
pdb_chain_list = []
for folder in os.listdir(stingallo_prediction_set_dir):
    if folder.endswith('_stingallo'):
        pdb_code, chain_name, _ = folder.split('_')
        pdb_chain_list.append({"pdb": pdb_code, "chain": chain_name})

# Loop over each PDB code and chain for all three models
for pdb_chain in pdb_chain_list:
    pdb_code = pdb_chain["pdb"]
    chain_name = pdb_chain["chain"]
    
    # Query PASSer API for the ensemble, automl, and rank models
    for model, dir_name in zip(['ensemble', 'automl', 'rank'], 
                               [passer_ensemble_dir, passer_automl_dir, passer_rank_dir]):
        prediction_data = get_passer_prediction(pdb_code, chain_name, model)
        
        if prediction_data:
            # Create a folder for the protein and chain in the corresponding passer_set directory
            protein_folder = f"{pdb_code}_{chain_name}_passer_{model}"
            target_protein_dir = os.path.join(dir_name, protein_folder)
            
            if not os.path.exists(target_protein_dir):
                os.makedirs(target_protein_dir)
            
            # Copy the two PDB files (protein and chain-specific PDB) from stingallo_prediction_set
            protein_pdb_file = os.path.join(stingallo_prediction_set_dir, f"{pdb_code}_{chain_name}_stingallo", f"{pdb_code}_protein.pdb")
            chain_pdb_file = os.path.join(stingallo_prediction_set_dir, f"{pdb_code}_{chain_name}_stingallo", f"{pdb_code}_chain_{chain_name}.pdb")
            
            # Check if both files exist before copying
            if os.path.exists(protein_pdb_file):
                shutil.copy(protein_pdb_file, target_protein_dir)
            else:
                print(f"Warning: {protein_pdb_file} does not exist!")
            
            if os.path.exists(chain_pdb_file):
                shutil.copy(chain_pdb_file, target_protein_dir)
            else:
                print(f"Warning: {chain_pdb_file} does not exist!")
            
            # Generate and save the .txt file
            txt_content = generate_txt_content(prediction_data)
            txt_file_path = os.path.join(target_protein_dir, f"{pdb_code}_passer_{model}_allosteric_residues.txt")
            with open(txt_file_path, 'w') as f:
                f.write(txt_content)
            
            # Generate and save the .pml file
            pml_content = generate_pml_content(pdb_code, chain_name, prediction_data)
            pml_file_path = os.path.join(target_protein_dir, f"{pdb_code}_passer_{model}_allosteric_sites.pml")
            with open(pml_file_path, 'w') as f:
                f.write(pml_content)

print("PASSer predictions for ensemble, automl, and rank models created successfully!")
