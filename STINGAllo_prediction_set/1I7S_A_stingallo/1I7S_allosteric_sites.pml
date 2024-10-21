# PyMOL script to highlight allosteric sites in 1I7S
fetch 1I7S
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 323 and chain A
show surface, resi 323 and chain A
color green, resi 323 and chain A
set transparency, 0.19999999999999996, resi 323 and chain A
select resi 293 and chain A
show surface, resi 293 and chain A
color green, resi 293 and chain A
set transparency, 0.19999999999999996, resi 293 and chain A
select resi 453 and chain A
show surface, resi 453 and chain A
color green, resi 453 and chain A
set transparency, 0.19999999999999996, resi 453 and chain A
zoom chain A
