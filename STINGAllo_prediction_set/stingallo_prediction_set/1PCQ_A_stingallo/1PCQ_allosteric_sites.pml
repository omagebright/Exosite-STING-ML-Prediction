# PyMOL script to highlight allosteric sites in 1PCQ
fetch 1PCQ
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 88 and chain A
show surface, resi 88 and chain A
color green, resi 88 and chain A
set transparency, 0.19999999999999996, resi 88 and chain A
zoom chain A
