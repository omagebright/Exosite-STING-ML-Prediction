# PyMOL script to highlight allosteric sites in 2D5X
fetch 2D5X
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 35 and chain B
show surface, resi 35 and chain B
color green, resi 35 and chain B
set transparency, 0.19999999999999996, resi 35 and chain B
select resi 35 and chain B
show surface, resi 35 and chain B
color green, resi 35 and chain B
set transparency, 0.19999999999999996, resi 35 and chain B
zoom chain B
