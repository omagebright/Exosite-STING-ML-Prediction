# PyMOL script to highlight allosteric sites in 1H9G
fetch 1H9G
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 177 and chain A
show surface, resi 177 and chain A
color green, resi 177 and chain A
set transparency, 0.19999999999999996, resi 177 and chain A
select resi 165 and chain A
show surface, resi 165 and chain A
color green, resi 165 and chain A
set transparency, 0.19999999999999996, resi 165 and chain A
zoom chain A
