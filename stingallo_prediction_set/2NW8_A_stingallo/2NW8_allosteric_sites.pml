# PyMOL script to highlight allosteric sites in 2NW8
fetch 2NW8
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 98 and chain A
show surface, resi 98 and chain A
color green, resi 98 and chain A
set transparency, 0.19999999999999996, resi 98 and chain A
select resi 137 and chain A
show surface, resi 137 and chain A
color green, resi 137 and chain A
set transparency, 0.19999999999999996, resi 137 and chain A
select resi 98 and chain A
show surface, resi 98 and chain A
color green, resi 98 and chain A
set transparency, 0.19999999999999996, resi 98 and chain A
select resi 137 and chain A
show surface, resi 137 and chain A
color green, resi 137 and chain A
set transparency, 0.19999999999999996, resi 137 and chain A
zoom chain A
