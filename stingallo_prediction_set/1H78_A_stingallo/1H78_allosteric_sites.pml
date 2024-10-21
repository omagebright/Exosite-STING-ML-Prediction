# PyMOL script to highlight allosteric sites in 1H78
fetch 1H78
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
zoom chain A
