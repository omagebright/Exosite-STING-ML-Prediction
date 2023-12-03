import os
import pandas as pd
from Bio.PDB import PDBParser, NeighborSearch
import warnings
from Bio import BiopythonWarning

# Suppress Biopython warnings
warnings.simplefilter('ignore', BiopythonWarning)

# Define directories
lasa_dir = 'complete_LASA'
complex_dir = 'protein-modulator_complexes'
output_dir = 'exosite_annotated'

# Create output directory if it doesn't exist
os.makedirs(output_dir, exist_ok=True)

# Get list of LASA files
lasa_files = [f for f in os.listdir(lasa_dir) if f.endswith('.txt')]

for lasa_file in lasa_files:
    # Extract PDB code from file name
    pdb_code = lasa_file.split('_')[1].split('.')[0]

    # Find the corresponding complex file
    complex_files = [f for f in os.listdir(complex_dir) if pdb_code in f and f.endswith('.pdb')]
    if not complex_files:
        print(f'No matching complex file found for: {lasa_file}')
        continue
    complex_file = complex_files[0]

    # Check if complex file exists and is not empty
    complex_path = os.path.join(complex_dir, complex_file)
    if os.stat(complex_path).st_size == 0:
        print(f'Skipping empty file: {complex_file}')
        continue

    # Read LASA file
    lasa_df = pd.read_csv(os.path.join(lasa_dir, lasa_file), delim_whitespace=True)

    # Parse complex PDB file
    parser = PDBParser(PERMISSIVE=1)
    structure = parser.get_structure('complex', complex_path)

    # Get all atoms in the ligand and the protein
    ligand_atoms = [atom for atom in structure.get_atoms() if atom.get_full_id()[3][0].startswith('H') and atom.parent.resname not in ['HOH', 'WAT']]
    protein_atoms = [atom for atom in structure.get_atoms() if atom.get_full_id()[3][0] == ' ']

    # Find all protein residues within 5A of any ligand atom
    neighbor_search = NeighborSearch(list(protein_atoms))
    nearby_residues = set()
    for atom in ligand_atoms:
        nearby_atom_list = neighbor_search.search(atom.coord, 5.0)
        for nearby_atom in nearby_atom_list:
            nearby_residues.add(nearby_atom.get_parent())

    print(f'Nearby residues: {nearby_residues}')

    # Get residue numbers of nearby residues
    nearby_residue_numbers = set(residue.id[1] for residue in nearby_residues)

    print(pdb_code, nearby_residue_numbers)

    # Add Class column
    lasa_df['Class'] = lasa_df.apply(lambda row: 'EFR' if row['LASA'] > 0 and row['number'] in nearby_residue_numbers else 'FRs', axis=1)

    # Write output to file
    output_file = lasa_file
    lasa_df.to_csv(os.path.join(output_dir, output_file), sep='\t', index=False)
