# PyMOL script to highlight allosteric sites in 3L3V
fetch 3L3V
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 198 and chain A
show surface, resi 198 and chain A
color green, resi 198 and chain A
set transparency, 0.19999999999999996, resi 198 and chain A
select resi 200 and chain A
show surface, resi 200 and chain A
color green, resi 200 and chain A
set transparency, 0.19999999999999996, resi 200 and chain A
select resi 83 and chain A
show surface, resi 83 and chain A
color green, resi 83 and chain A
set transparency, 0.19999999999999996, resi 83 and chain A
select resi 198 and chain A
show surface, resi 198 and chain A
color green, resi 198 and chain A
set transparency, 0.19999999999999996, resi 198 and chain A
select resi 200 and chain A
show surface, resi 200 and chain A
color green, resi 200 and chain A
set transparency, 0.19999999999999996, resi 200 and chain A
select resi 83 and chain A
show surface, resi 83 and chain A
color green, resi 83 and chain A
set transparency, 0.19999999999999996, resi 83 and chain A
zoom chain A
