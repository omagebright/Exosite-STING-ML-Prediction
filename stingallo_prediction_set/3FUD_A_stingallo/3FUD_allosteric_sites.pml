# PyMOL script to highlight allosteric sites in 3FUD
fetch 3FUD
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 563 and chain A
show surface, resi 563 and chain A
color green, resi 563 and chain A
set transparency, 0.19999999999999996, resi 563 and chain A
select resi 268 and chain A
show surface, resi 268 and chain A
color green, resi 268 and chain A
set transparency, 0.19999999999999996, resi 268 and chain A
zoom chain A
