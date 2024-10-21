# PyMOL script to highlight allosteric sites in 2BU6
fetch 2BU6
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 112 and chain A
show surface, resi 112 and chain A
color green, resi 112 and chain A
set transparency, 0.19999999999999996, resi 112 and chain A
select resi 143 and chain A
show surface, resi 143 and chain A
color green, resi 143 and chain A
set transparency, 0.19999999999999996, resi 143 and chain A
select resi 63 and chain A
show surface, resi 63 and chain A
color green, resi 63 and chain A
set transparency, 0.19999999999999996, resi 63 and chain A
select resi 147 and chain A
show surface, resi 147 and chain A
color green, resi 147 and chain A
set transparency, 0.19999999999999996, resi 147 and chain A
select resi 146 and chain A
show surface, resi 146 and chain A
color green, resi 146 and chain A
set transparency, 0.19999999999999996, resi 146 and chain A
select resi 126 and chain A
show surface, resi 126 and chain A
color green, resi 126 and chain A
set transparency, 0.19999999999999996, resi 126 and chain A
select resi 138 and chain A
show surface, resi 138 and chain A
color green, resi 138 and chain A
set transparency, 0.19999999999999996, resi 138 and chain A
zoom chain A
