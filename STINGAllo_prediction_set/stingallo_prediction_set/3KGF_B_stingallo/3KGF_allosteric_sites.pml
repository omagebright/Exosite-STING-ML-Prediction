# PyMOL script to highlight allosteric sites in 3KGF
fetch 3KGF
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 411 and chain B
show surface, resi 411 and chain B
color green, resi 411 and chain B
set transparency, 0.19999999999999996, resi 411 and chain B
select resi 247 and chain B
show surface, resi 247 and chain B
color green, resi 247 and chain B
set transparency, 0.19999999999999996, resi 247 and chain B
select resi 279 and chain B
show surface, resi 279 and chain B
color green, resi 279 and chain B
set transparency, 0.19999999999999996, resi 279 and chain B
select resi 411 and chain B
show surface, resi 411 and chain B
color green, resi 411 and chain B
set transparency, 0.19999999999999996, resi 411 and chain B
select resi 247 and chain B
show surface, resi 247 and chain B
color green, resi 247 and chain B
set transparency, 0.19999999999999996, resi 247 and chain B
select resi 279 and chain B
show surface, resi 279 and chain B
color green, resi 279 and chain B
set transparency, 0.19999999999999996, resi 279 and chain B
zoom chain B
