# PyMOL script to highlight allosteric sites in 3F6G
fetch 3F6G
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
zoom chain A
