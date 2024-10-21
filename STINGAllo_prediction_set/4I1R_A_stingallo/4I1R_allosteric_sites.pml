# PyMOL script to highlight allosteric sites in 4I1R
fetch 4I1R
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
zoom chain A
