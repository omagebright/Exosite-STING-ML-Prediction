# PyMOL script to highlight allosteric sites in 3EK5
fetch 3EK5
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 100 and chain B
show surface, resi 100 and chain B
color green, resi 100 and chain B
set transparency, 0.19999999999999996, resi 100 and chain B
select resi 127 and chain B
show surface, resi 127 and chain B
color green, resi 127 and chain B
set transparency, 0.19999999999999996, resi 127 and chain B
select resi 112 and chain B
show surface, resi 112 and chain B
color green, resi 112 and chain B
set transparency, 0.19999999999999996, resi 112 and chain B
select resi 122 and chain B
show surface, resi 122 and chain B
color green, resi 122 and chain B
set transparency, 0.19999999999999996, resi 122 and chain B
select resi 214 and chain B
show surface, resi 214 and chain B
color green, resi 214 and chain B
set transparency, 0.19999999999999996, resi 214 and chain B
select resi 98 and chain B
show surface, resi 98 and chain B
color green, resi 98 and chain B
set transparency, 0.19999999999999996, resi 98 and chain B
select resi 125 and chain B
show surface, resi 125 and chain B
color green, resi 125 and chain B
set transparency, 0.19999999999999996, resi 125 and chain B
select resi 110 and chain B
show surface, resi 110 and chain B
color green, resi 110 and chain B
set transparency, 0.19999999999999996, resi 110 and chain B
zoom chain B
