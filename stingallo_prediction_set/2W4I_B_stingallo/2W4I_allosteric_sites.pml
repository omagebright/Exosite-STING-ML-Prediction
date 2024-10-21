# PyMOL script to highlight allosteric sites in 2W4I
fetch 2W4I
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 150 and chain B
show surface, resi 150 and chain B
color green, resi 150 and chain B
set transparency, 0.19999999999999996, resi 150 and chain B
select resi 151 and chain B
show surface, resi 151 and chain B
color green, resi 151 and chain B
set transparency, 0.19999999999999996, resi 151 and chain B
select resi 38 and chain B
show surface, resi 38 and chain B
color green, resi 38 and chain B
set transparency, 0.19999999999999996, resi 38 and chain B
select resi 41 and chain B
show surface, resi 41 and chain B
color green, resi 41 and chain B
set transparency, 0.19999999999999996, resi 41 and chain B
select resi 37 and chain B
show surface, resi 37 and chain B
color green, resi 37 and chain B
set transparency, 0.19999999999999996, resi 37 and chain B
select resi 146 and chain B
show surface, resi 146 and chain B
color green, resi 146 and chain B
set transparency, 0.19999999999999996, resi 146 and chain B
zoom chain B
