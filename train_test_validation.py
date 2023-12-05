import pandas as pd
from sklearn.model_selection import train_test_split

# Load your CSV file
df = pd.read_csv('sting_descriptor_retrieval_data_no_class.csv')

# Create a new column 'pdb_chain' that combines 'pdb_code' and 'chain_name'
df['pdb_chain'] = df['pdb_code'].astype(str) + df['chain_name'].astype(str)

# Get unique 'pdb_chain'
unique_pdb_chain = df['pdb_chain'].unique()

# Split the unique 'pdb_chain' into train, test, and validation sets
train_pdb_chain, test_pdb_chain = train_test_split(unique_pdb_chain, test_size=0.4, random_state=42)
test_pdb_chain, val_pdb_chain = train_test_split(test_pdb_chain, test_size=0.5, random_state=42)

# Create train, test, and validation dataframes based on the 'pdb_chain' splits
train_df = df[df['pdb_chain'].isin(train_pdb_chain)].drop('pdb_chain', axis=1)
test_df = df[df['pdb_chain'].isin(test_pdb_chain)].drop('pdb_chain', axis=1)
val_df = df[df['pdb_chain'].isin(val_pdb_chain)].drop('pdb_chain', axis=1)

# Save the dataframes to CSV files
train_df.to_csv('train.csv', index=False)
test_df.to_csv('test.csv', index=False)
val_df.to_csv('validation.csv', index=False)
