# PyMOL script to highlight allosteric sites in 2WU1
fetch 2WU1
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 233 and chain A
show surface, resi 233 and chain A
color green, resi 233 and chain A
set transparency, 0.19999999999999996, resi 233 and chain A
select resi 233 and chain A
show surface, resi 233 and chain A
color green, resi 233 and chain A
set transparency, 0.19999999999999996, resi 233 and chain A
zoom chain A
