# PyMOL script to highlight allosteric sites in 4KFB
fetch 4KFB
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
zoom chain A
