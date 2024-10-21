# PyMOL script to highlight allosteric sites in 4NBN
fetch 4NBN
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 200 and chain A
show surface, resi 200 and chain A
color green, resi 200 and chain A
set transparency, 0.19999999999999996, resi 200 and chain A
select resi 201 and chain A
show surface, resi 201 and chain A
color green, resi 201 and chain A
set transparency, 0.19999999999999996, resi 201 and chain A
select resi 196 and chain A
show surface, resi 196 and chain A
color green, resi 196 and chain A
set transparency, 0.19999999999999996, resi 196 and chain A
zoom chain A
