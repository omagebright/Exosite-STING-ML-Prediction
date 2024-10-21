# PyMOL script to highlight allosteric sites in 3VQ8
fetch 3VQ8
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 107 and chain B
show surface, resi 107 and chain B
color green, resi 107 and chain B
set transparency, 0.19999999999999996, resi 107 and chain B
select resi 198 and chain B
show surface, resi 198 and chain B
color green, resi 198 and chain B
set transparency, 0.19999999999999996, resi 198 and chain B
select resi 106 and chain B
show surface, resi 106 and chain B
color green, resi 106 and chain B
set transparency, 0.19999999999999996, resi 106 and chain B
select resi 197 and chain B
show surface, resi 197 and chain B
color green, resi 197 and chain B
set transparency, 0.19999999999999996, resi 197 and chain B
select resi 200 and chain B
show surface, resi 200 and chain B
color green, resi 200 and chain B
set transparency, 0.19999999999999996, resi 200 and chain B
select resi 204 and chain B
show surface, resi 204 and chain B
color green, resi 204 and chain B
set transparency, 0.19999999999999996, resi 204 and chain B
select resi 109 and chain B
show surface, resi 109 and chain B
color green, resi 109 and chain B
set transparency, 0.19999999999999996, resi 109 and chain B
select resi 83 and chain B
show surface, resi 83 and chain B
color green, resi 83 and chain B
set transparency, 0.19999999999999996, resi 83 and chain B
zoom chain B
