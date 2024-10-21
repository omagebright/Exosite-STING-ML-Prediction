# PyMOL script to highlight allosteric sites in 2NW8
fetch 2NW8
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 132 and chain B
show surface, resi 132 and chain B
color green, resi 132 and chain B
set transparency, 0.19999999999999996, resi 132 and chain B
select resi 62 and chain B
show surface, resi 62 and chain B
color green, resi 62 and chain B
set transparency, 0.19999999999999996, resi 62 and chain B
select resi 137 and chain B
show surface, resi 137 and chain B
color green, resi 137 and chain B
set transparency, 0.19999999999999996, resi 137 and chain B
select resi 132 and chain B
show surface, resi 132 and chain B
color green, resi 132 and chain B
set transparency, 0.19999999999999996, resi 132 and chain B
select resi 62 and chain B
show surface, resi 62 and chain B
color green, resi 62 and chain B
set transparency, 0.19999999999999996, resi 62 and chain B
select resi 137 and chain B
show surface, resi 137 and chain B
color green, resi 137 and chain B
set transparency, 0.19999999999999996, resi 137 and chain B
zoom chain B
