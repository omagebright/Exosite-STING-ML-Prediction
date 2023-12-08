import pymysql
import pandas as pd
from multiprocessing import Pool
import warnings
warnings.filterwarnings('ignore')
import os
import sys
from functools import partial


# Define your database connection details
user = '*****'
password = '*****'
host = '*******'
port = ****

# Define the tables and columns needed
tables_columns = {
    'Air': ['pdb_code', 'convert(chain_name, char(1))', 'number', "acc_isol_surfv", "acc_isol_naccess", "acc_isol_nsc", 
    "acc_complex_surfv", "acc_complex_naccess", "acc_complex_nsc", 
    "acc_ifr_surfv", "acc_ifr_naccess", "acc_ifr_nsc", 
    "acc_rsa_surfv", "acc_rsa_naccess", "acc_rsa_nsc", 
    "bsa_ratio_surfv", "bsa_ratio_naccess", "bsa_ratio_nsc"],
    'Cross_Link_Order_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number', "clo_35_15_CB_WNASurf", "clo_35_15_LHA_WNASurf", "clo_35_20_LHA_WNASurf", 
    "clo_35_30_LHA_WNASurf", "clo_5_15_CA_WNASurf", "clo_5_15_CB_WNASurf", 
    "clo_5_15_LHA_WNASurf", "clo_5_20_CA_WNASurf", "clo_5_20_CB_WNASurf", 
    "clo_5_20_LHA_WNASurf", "clo_5_30_CA_WNASurf", "clo_5_30_CB_WNASurf", 
    "clo_5_30_LHA_WNASurf", "clo_85_15_CA_WNASurf", "clo_85_15_CB_WNASurf", 
    "clo_85_15_LHA_WNASurf", "clo_85_20_CA_WNASurf", "clo_85_20_CB_WNASurf", 
    "clo_85_20_LHA_WNASurf", "clo_85_30_CA_WNASurf", "clo_85_30_CB_WNASurf", 
    "clo_85_30_LHA_WNASurf", "clo_35_15_CA_WNADist", "clo_35_15_CB_WNADist", 
    "clo_35_15_LHA_WNADist", "clo_35_20_CA_WNADist", "clo_35_20_CB_WNADist", 
    "clo_35_20_LHA_WNADist", "clo_35_30_CA_WNADist", "clo_35_30_CB_WNADist", 
    "clo_35_30_LHA_WNADist", "clo_5_15_CA_WNADist", "clo_5_15_CB_WNADist", 
    "clo_5_15_LHA_WNADist", "clo_5_20_CA_WNADist", "clo_5_20_CB_WNADist", 
    "clo_5_20_LHA_WNADist", "clo_5_30_CA_WNADist", "clo_5_30_CB_WNADist", 
    "clo_5_30_LHA_WNADist", "clo_85_15_CA_WNADist", "clo_85_15_CB_WNADist", 
    "clo_85_15_LHA_WNADist", "clo_85_20_CA_WNADist", "clo_85_20_CB_WNADist", 
    "clo_85_20_LHA_WNADist", "clo_85_30_CA_WNADist", "clo_85_30_CB_WNADist", 
    "clo_85_30_LHA_WNADist"],
    'Cross_Presence_Order_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number',     "cpo_35_15_LHA_WNASurf", "cpo_35_20_LHA_WNASurf", "cpo_35_30_LHA_WNASurf", 
    "cpo_5_15_LHA_WNASurf", "cpo_5_20_LHA_WNASurf", "cpo_5_30_LHA_WNASurf", 
    "cpo_85_15_CA_WNASurf", "cpo_85_20_CA_WNASurf", "cpo_85_30_CA_WNASurf", 
    "cpo_85_15_CB_WNASurf", "cpo_85_20_CB_WNASurf", "cpo_85_30_CB_WNASurf", 
    "cpo_85_15_LHA_WNASurf", "cpo_85_20_LHA_WNASurf", "cpo_85_30_LHA_WNASurf", 
    "cpo_35_15_LHA_WNADist", "cpo_35_20_LHA_WNADist", "cpo_35_30_LHA_WNADist", 
    "cpo_5_15_LHA_WNADist", "cpo_5_20_LHA_WNADist", "cpo_5_30_LHA_WNADist", 
    "cpo_85_15_CA_WNADist", "cpo_85_20_CA_WNADist", "cpo_85_30_CA_WNADist", 
    "cpo_85_15_CB_WNADist", "cpo_85_20_CB_WNADist", "cpo_85_30_CB_WNADist", 
    "cpo_85_15_LHA_WNADist", "cpo_85_20_LHA_WNADist", "cpo_85_30_LHA_WNADist"],
    'Curvature_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number',   "curvature_isol_WNASurf", "asa_isol_WNASurf", "msa_isol_WNASurf", 
    "curvature_complex_WNASurf", "asa_complex_WNASurf", "msa_complex_WNASurf", 
    "cavity_curvature_isol_WNASurf", "cavity_asa_isol_WNASurf", "cavity_msa_isol_WNASurf", 
    "cavity_curvature_complex_WNASurf", "cavity_asa_complex_WNASurf", "cavity_msa_complex_WNASurf", 
    "curvature_isol_WNADist", "asa_isol_WNADist", "msa_isol_WNADist", 
    "curvature_complex_WNADist", "asa_complex_WNADist", "msa_complex_WNADist", 
    "cavity_curvature_isol_WNADist", "cavity_asa_isol_WNADist", "cavity_msa_isol_WNADist", 
    "cavity_curvature_complex_WNADist", "cavity_asa_complex_WNADist", "cavity_msa_complex_WNADist"],
    'DSSP': ['pdb_code', 'convert(chain_name, char(1))', 'number',     "kappa", "phi", "acceptor_energy1", "acceptor_energy2", 
    "donor_energy1", "donor_energy2", "acceptor_number1", 
    "acceptor_number2", "donor_number1", "donor_number2", 
    "fst_bridge_pair_number", "snd_bridge_pair_number"],
    'Density_Sponge_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number',     "density_CA_3_WNASurf", "density_CA_4_WNASurf", "density_CA_5_WNASurf", 
    "density_CA_6_WNASurf", "density_CA_7_WNASurf", "density_LHA_3_WNASurf", 
    "density_LHA_4_WNASurf", "density_LHA_5_WNASurf", "density_LHA_6_WNASurf", 
    "density_LHA_7_WNASurf", "density_CA_3_IFR_WNASurf", "density_CA_4_IFR_WNASurf", 
    "density_CA_5_IFR_WNASurf", "density_CA_6_IFR_WNASurf", "density_CA_7_IFR_WNASurf", 
    "density_LHA_3_IFR_WNASurf", "density_LHA_4_IFR_WNASurf", "density_LHA_5_IFR_WNASurf", 
    "density_LHA_6_IFR_WNASurf", "density_LHA_7_IFR_WNASurf", "sponge_CA_3_WNASurf", 
    "sponge_CA_4_WNASurf", "sponge_CA_5_WNASurf", "sponge_CA_6_WNASurf", 
    "sponge_CA_7_WNASurf", "sponge_LHA_3_WNASurf", "sponge_LHA_4_WNASurf", 
    "sponge_LHA_5_WNASurf", "sponge_LHA_6_WNASurf", "sponge_LHA_7_WNASurf", 
    "sponge_CA_3_IFR_WNASurf", "sponge_CA_4_IFR_WNASurf", "sponge_CA_5_IFR_WNASurf", 
    "sponge_CA_6_IFR_WNASurf", "sponge_CA_7_IFR_WNASurf", "sponge_LHA_3_IFR_WNASurf", 
    "sponge_LHA_4_IFR_WNASurf", "sponge_LHA_5_IFR_WNASurf", "sponge_LHA_6_IFR_WNASurf", 
    "sponge_LHA_7_IFR_WNASurf", "density_CA_3_WNADist", "density_CA_4_WNADist", 
    "density_CA_5_WNADist", "density_CA_6_WNADist", "density_CA_7_WNADist", 
    "density_LHA_3_WNADist", "density_LHA_4_WNADist", "density_LHA_5_WNADist", 
    "density_LHA_6_WNADist", "density_LHA_7_WNADist", "density_CA_3_IFR_WNADist", 
    "density_CA_4_IFR_WNADist", "density_CA_5_IFR_WNADist", "density_CA_6_IFR_WNADist", 
    "density_CA_7_IFR_WNADist", "density_LHA_3_IFR_WNADist", "density_LHA_4_IFR_WNADist", 
    "density_LHA_5_IFR_WNADist", "density_LHA_6_IFR_WNADist", "density_LHA_7_IFR_WNADist", 
    "sponge_CA_3_WNADist", "sponge_CA_4_WNADist", "sponge_CA_5_WNADist", 
    "sponge_CA_6_WNADist", "sponge_CA_7_WNADist", "sponge_LHA_3_WNADist", 
    "sponge_LHA_4_WNADist", "sponge_LHA_5_WNADist", "sponge_LHA_6_WNADist", 
    "sponge_LHA_7_WNADist", "sponge_CA_3_IFR_WNADist", "sponge_CA_4_IFR_WNADist", 
    "sponge_CA_5_IFR_WNADist", "sponge_CA_6_IFR_WNADist", "sponge_CA_7_IFR_WNADist", 
    "sponge_LHA_3_IFR_WNADist", "sponge_LHA_4_IFR_WNADist", "sponge_LHA_5_IFR_WNADist", 
    "sponge_LHA_6_IFR_WNADist", "sponge_LHA_7_IFR_WNADist"],
    'Distances': ['pdb_code', 'convert(chain_name, char(1))', 'number', 'distance_to_cterminal', 'distance_to_nterminal', 'distance_to_cg'],
    'Electrostatic_Potential_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number', "ep_ca_WNASurf", "ep_lha_WNASurf", "ep_absolute_WNASurf", 
    "ep_average_WNASurf", "ep_surface_WNASurf", "ep_ca_WNADist", 
    "ep_lha_WNADist", "ep_absolute_WNADist", "ep_average_WNADist", 
    "ep_surface_WNADist"],
    'Energy_Density_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number', "ced_CA_3_WNASurf", "ced_CA_4_WNASurf", "ced_CA_5_WNASurf", 
    "ced_CA_6_WNASurf", "ced_CA_7_WNASurf", "ced_LHA_3_WNASurf", 
    "ced_LHA_4_WNASurf", "ced_LHA_5_WNASurf", "ced_LHA_6_WNASurf", 
    "ced_LHA_7_WNASurf", "ced_CA_3_WNADist", "ced_CA_4_WNADist", 
    "ced_CA_5_WNADist", "ced_CA_6_WNADist", "ced_CA_7_WNADist", 
    "ced_LHA_3_WNADist", "ced_LHA_4_WNADist", "ced_LHA_5_WNADist", 
    "ced_LHA_6_WNADist", "ced_LHA_7_WNADist"],
    'Entropy_Density_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number', "entd_CA_3_WNASurf", "entd_CA_4_WNASurf", "entd_CA_5_WNASurf", 
    "entd_CA_6_WNASurf", "entd_CA_7_WNASurf", "entd_LHA_3_WNASurf", 
    "entd_LHA_4_WNASurf", "entd_LHA_5_WNASurf", "entd_LHA_6_WNASurf", 
    "entd_LHA_7_WNASurf", "entd_CA_3_WNADist", "entd_CA_4_WNADist", 
    "entd_CA_5_WNADist", "entd_CA_6_WNADist", "entd_CA_7_WNADist", 
    "entd_LHA_3_WNADist", "entd_LHA_4_WNADist", "entd_LHA_5_WNADist", 
    "entd_LHA_6_WNADist", "entd_LHA_7_WNADist"],
    'Evolutionary_Pressure': ['pdb_code', 'convert(chain_name, char(1))', 'number', "evol_press", "normalized_evol_press", "bayes_lb", 
    "bayes_ub", "bayes_std"],
    'Graph_Descriptor_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number', "eccentricity_WNASurf", "radiality_centrality_WNASurf", "local_closeness_WNASurf", 
    "dice_similarity_WNASurf", "mean_neighbor_degree_WNASurf", "lac_WNASurf", 
    "mnc_WNASurf", "dmnc_WNASurf", "closeness_WNASurf", 
    "cluster_coefficient_WNASurf", "degree_WNASurf", "betweenness_WNASurf", 
    "random_walk_betweenness_WNASurf", "bary_center_WNASurf", "page_rank_WNASurf", 
    "bottle_neck_WNASurf", "eccentricity_WNADist", "radiality_centrality_WNADist", 
    "local_closeness_WNADist", "dice_similarity_WNADist", "mean_neighbor_degree_WNADist", 
    "lac_WNADist", "mnc_WNADist", "dmnc_WNADist", "closeness_WNADist", 
    "cluster_coefficient_WNADist", "degree_WNADist", "betweenness_WNADist", 
    "random_walk_betweenness_WNADist", "bary_center_WNADist", "page_rank_WNADist", 
    "bottle_neck_WNADist"],
    'HSSP': ['pdb_code', 'convert(chain_name, char(1))', 'number', "rel_entropy", "entropy", "weight"],
    'Hydrophobicity': ['pdb_code', 'convert(chain_name, char(1))', 'number',     "hydro_radzicka_isol_surfv", "hydro_radzicka_complex_surfv", 
    "hydro_kite_dolitte_isol_surfv", "hydro_kite_dolitte_complex_surfv", 
    "hydro_radzicka_isol_naccess", "hydro_radzicka_complex_naccess", 
    "hydro_kite_dolitte_isol_naccess", "hydro_kite_dolitte_complex_naccess", 
    "hydro_radzicka_isol_nsc", "hydro_radzicka_complex_nsc", 
    "hydro_kite_dolitte_isol_nsc", "hydro_kite_dolitte_complex_nsc"],
    'Residue_Contacts_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number', "hydrophobic_energy_WNASurf", "charge_attr_energy_WNASurf", 
    "charge_repu_energy_WNASurf", "hb_mm_energy_WNASurf", 
    "hb_ms_energy_WNASurf", "hb_ss_energy_WNASurf", 
    "total_energy_WNASurf", "hydrophobic_energy_WNADist", 
    "charge_attr_energy_WNADist", "charge_repu_energy_WNADist", 
    "hb_mm_energy_WNADist", "hb_ms_energy_WNADist", 
    "aromatic_energy_WNADist", "hb_ss_energy_WNADist", 
    "total_energy_WNADist"],
    'Rotamer': ['pdb_code', 'convert(chain_name, char(1))', 'number', "phi", "psi", "chi1", "chi2"],
    'Side_Chain_Orientation_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number', "side_chain_angle_3_WNASurf", "side_chain_angle_4_WNASurf", "side_chain_angle_5_WNASurf", 
    "side_chain_angle_6_WNASurf", "side_chain_angle_7_WNASurf", "side_chain_average_angle_3_WNASurf", 
    "side_chain_average_angle_4_WNASurf", "side_chain_average_angle_5_WNASurf", "side_chain_average_angle_6_WNASurf", 
    "side_chain_average_angle_7_WNASurf", "neighbors_side_chain_angle_3_WNASurf", "neighbors_side_chain_angle_4_WNASurf", 
    "neighbors_side_chain_angle_5_WNASurf", "neighbors_side_chain_angle_6_WNASurf", "neighbors_side_chain_angle_7_WNASurf", 
    "side_chain_angle_3_WNADist", "side_chain_angle_4_WNADist", "side_chain_angle_5_WNADist", 
    "side_chain_angle_6_WNADist", "side_chain_angle_7_WNADist", "side_chain_average_angle_3_WNADist", 
    "side_chain_average_angle_4_WNADist", "side_chain_average_angle_5_WNADist", "side_chain_average_angle_6_WNADist", 
    "side_chain_average_angle_7_WNADist", "neighbors_side_chain_angle_3_WNADist", "neighbors_side_chain_angle_4_WNADist", 
    "neighbors_side_chain_angle_5_WNADist", "neighbors_side_chain_angle_6_WNADist", "neighbors_side_chain_angle_7_WNADist"],
    'Solvation_WNA': ['pdb_code', 'convert(chain_name, char(1))', "solvation_3_WNASurf", "solvation_4_WNASurf", "solvation_5_WNASurf", 
    "solvation_6_WNASurf", "solvation_7_WNASurf", "solvation_3_WNADist", 
    "solvation_4_WNADist", "solvation_5_WNADist", "solvation_6_WNADist", 
    "solvation_7_WNADist"],
    'Stride': ['pdb_code', 'convert(chain_name, char(1))', 'number', "phi", "psi", "accessibility"],
    'Unused_Contacts_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number', "hydrophobic_uc_energy_WNASurf", "total_energy_WNASurf", "hydrophobic_uc_energy_WNADist", "total_energy_WNADist"],
    'Weighted_Contact_Number_WNA': ['pdb_code', 'convert(chain_name, char(1))', 'number',     "weighted_contact_number_WNASurf",
    "avg_weighted_contact_number_k_2_WNASurf",
    "avg_weighted_contact_number_k_3_WNASurf",
    "avg_weighted_contact_number_k_4_WNASurf",
    "avg_weighted_contact_number_k_5_WNASurf",
    "weighted_contact_number_WNADist",
    "avg_weighted_contact_number_k_2_WNADist",
    "avg_weighted_contact_number_k_3_WNADist",
    "avg_weighted_contact_number_k_4_WNADist",
    "avg_weighted_contact_number_k_5_WNADist"],
    'PocketResidues': ['pdb_code', 'convert(chain_name, char(1))', 'number', "pocket_number", "volume", "area"],
    'Hydrophobic_Patch_Residue': ['pdb_code', 'convert(chain_name, char(1))', 'number', "patch_number", "patch_area"]
}

# Function to establish a database connection
def establish_database_connection():
    return pymysql.connect(host=host,
                           user=user,
                           password=password,
                           database='STINGRDB2',
                           port=port)

# Function to fetch data from the selected table
def fetch_data_from_table(table_name, pdb_code, chain_name, number):
    # Connect to the database
    connection = establish_database_connection()

    try:
        # Create a SQL query to select data based on the provided conditions
        query = f"SELECT {', '.join(tables_columns[table_name])} FROM {table_name} WHERE pdb_code = '{pdb_code}' AND chain_name = '{chain_name}'"
        # Execute the query
        result = pd.read_sql(query, connection)
        result = result.rename({'convert(chain_name, char(1))': 'chain_name'}, axis=1)
        
        return result
    finally:
        connection.close()


def process_row_and_save(row, output_csv):
    pdb_code, chain_name, number = row
    print(f"Processing PDB code {pdb_code}, chain name {chain_name}, number {number}...")

    results = []
    for table in tables_columns.keys():
        try:
            result = fetch_data_from_table(table, pdb_code, chain_name, number)
            results.append(result)
        except Exception as e:
            # Print or log the exception information
            print(f"Exception occurred for PDB code {pdb_code}, chain name {chain_name}, number {number}")
            print(traceback.format_exc())

    final_result = pd.concat(results)  # Concatenate the list of DataFrames into a single DataFrame
    
    
    
    # Append the result to the final CSV file
    final_result.to_csv(output_csv, mode='a', header=not os.path.exists(output_csv), index=False)

# Read the input data from the first argument
data = pd.read_csv(sys.argv[1])

# Define the output CSV file from the second argument
output_csv = sys.argv[2]

# Create a pool of processes
with Pool(80) as p:
    # Use partial to pass additional arguments to process_row_and_save
    process_row_partial = partial(process_row_and_save, output_csv=output_csv)
    
    # Map the partial function to data.values
    p.map(process_row_partial, data.values)


try:
    merged_results = pd.read_csv(output_csv, error_bad_lines=False)
except pd.errors.ParserError as e:
    print(f"Error: {e}")

# Optionally group by and save the final output
merged_results = merged_results.groupby(['pdb_code', 'chain_name', 'number'], as_index=False).first()
merged_results.to_csv(output_csv, index=False)
