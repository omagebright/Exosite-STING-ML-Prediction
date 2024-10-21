# PyMOL script to highlight allosteric sites in 1F2U
fetch 1F2U
hide everything
show cartoon, chain C
color spectrum, chain C
# Highlight allosteric residues
zoom chain C
