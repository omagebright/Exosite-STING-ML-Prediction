# PyMOL script to highlight allosteric sites in 4LRL
fetch 4LRL
hide everything
show cartoon, chain D
color spectrum, chain D
# Highlight allosteric residues
select resi 44 and chain D
show surface, resi 44 and chain D
color green, resi 44 and chain D
set transparency, 0.19999999999999996, resi 44 and chain D
select resi 326 and chain D
show surface, resi 326 and chain D
color green, resi 326 and chain D
set transparency, 0.19999999999999996, resi 326 and chain D
select resi 245 and chain D
show surface, resi 245 and chain D
color green, resi 245 and chain D
set transparency, 0.19999999999999996, resi 245 and chain D
select resi 14 and chain D
show surface, resi 14 and chain D
color green, resi 14 and chain D
set transparency, 0.19999999999999996, resi 14 and chain D
select resi 330 and chain D
show surface, resi 330 and chain D
color green, resi 330 and chain D
set transparency, 0.19999999999999996, resi 330 and chain D
select resi 16 and chain D
show surface, resi 16 and chain D
color green, resi 16 and chain D
set transparency, 0.19999999999999996, resi 16 and chain D
select resi 56 and chain D
show surface, resi 56 and chain D
color green, resi 56 and chain D
set transparency, 0.19999999999999996, resi 56 and chain D
select resi 55 and chain D
show surface, resi 55 and chain D
color green, resi 55 and chain D
set transparency, 0.19999999999999996, resi 55 and chain D
select resi 15 and chain D
show surface, resi 15 and chain D
color green, resi 15 and chain D
set transparency, 0.19999999999999996, resi 15 and chain D
zoom chain D
