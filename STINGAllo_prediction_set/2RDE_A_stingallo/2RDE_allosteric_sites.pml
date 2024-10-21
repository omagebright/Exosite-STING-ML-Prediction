# PyMOL script to highlight allosteric sites in 2RDE
fetch 2RDE
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 99 and chain A
show surface, resi 99 and chain A
color green, resi 99 and chain A
set transparency, 0.19999999999999996, resi 99 and chain A
select resi 217 and chain A
show surface, resi 217 and chain A
color green, resi 217 and chain A
set transparency, 0.19999999999999996, resi 217 and chain A
select resi 170 and chain A
show surface, resi 170 and chain A
color green, resi 170 and chain A
set transparency, 0.19999999999999996, resi 170 and chain A
select resi 99 and chain A
show surface, resi 99 and chain A
color green, resi 99 and chain A
set transparency, 0.19999999999999996, resi 99 and chain A
select resi 217 and chain A
show surface, resi 217 and chain A
color green, resi 217 and chain A
set transparency, 0.19999999999999996, resi 217 and chain A
select resi 170 and chain A
show surface, resi 170 and chain A
color green, resi 170 and chain A
set transparency, 0.19999999999999996, resi 170 and chain A
zoom chain A
