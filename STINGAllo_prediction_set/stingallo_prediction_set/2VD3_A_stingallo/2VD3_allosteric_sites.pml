# PyMOL script to highlight allosteric sites in 2VD3
fetch 2VD3
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
zoom chain A
