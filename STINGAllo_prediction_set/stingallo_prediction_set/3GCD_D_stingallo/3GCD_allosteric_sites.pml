# PyMOL script to highlight allosteric sites in 3GCD
fetch 3GCD
hide everything
show cartoon, chain D
color spectrum, chain D
# Highlight allosteric residues
select resi 180 and chain D
show surface, resi 180 and chain D
color green, resi 180 and chain D
set transparency, 0.19999999999999996, resi 180 and chain D
select resi 29 and chain D
show surface, resi 29 and chain D
color green, resi 29 and chain D
set transparency, 0.19999999999999996, resi 29 and chain D
select resi 85 and chain D
show surface, resi 85 and chain D
color green, resi 85 and chain D
set transparency, 0.19999999999999996, resi 85 and chain D
select resi 171 and chain D
show surface, resi 171 and chain D
color green, resi 171 and chain D
set transparency, 0.19999999999999996, resi 171 and chain D
select resi 182 and chain D
show surface, resi 182 and chain D
color green, resi 182 and chain D
set transparency, 0.19999999999999996, resi 182 and chain D
select resi 27 and chain D
show surface, resi 27 and chain D
color green, resi 27 and chain D
set transparency, 0.19999999999999996, resi 27 and chain D
select resi 55 and chain D
show surface, resi 55 and chain D
color green, resi 55 and chain D
set transparency, 0.19999999999999996, resi 55 and chain D
select resi 134 and chain D
show surface, resi 134 and chain D
color green, resi 134 and chain D
set transparency, 0.19999999999999996, resi 134 and chain D
select resi 183 and chain D
show surface, resi 183 and chain D
color green, resi 183 and chain D
set transparency, 0.19999999999999996, resi 183 and chain D
select resi 195 and chain D
show surface, resi 195 and chain D
color green, resi 195 and chain D
set transparency, 0.19999999999999996, resi 195 and chain D
select resi 200 and chain D
show surface, resi 200 and chain D
color green, resi 200 and chain D
set transparency, 0.19999999999999996, resi 200 and chain D
select resi 30 and chain D
show surface, resi 30 and chain D
color green, resi 30 and chain D
set transparency, 0.19999999999999996, resi 30 and chain D
select resi 136 and chain D
show surface, resi 136 and chain D
color green, resi 136 and chain D
set transparency, 0.19999999999999996, resi 136 and chain D
zoom chain D
