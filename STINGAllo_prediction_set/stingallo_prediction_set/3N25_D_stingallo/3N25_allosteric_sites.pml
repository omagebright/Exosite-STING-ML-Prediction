# PyMOL script to highlight allosteric sites in 3N25
fetch 3N25
hide everything
show cartoon, chain D
color spectrum, chain D
# Highlight allosteric residues
select resi 42 and chain D
show surface, resi 42 and chain D
color green, resi 42 and chain D
set transparency, 0.19999999999999996, resi 42 and chain D
select resi 105 and chain D
show surface, resi 105 and chain D
color green, resi 105 and chain D
set transparency, 0.19999999999999996, resi 105 and chain D
select resi 69 and chain D
show surface, resi 69 and chain D
color green, resi 69 and chain D
set transparency, 0.19999999999999996, resi 69 and chain D
select resi 45 and chain D
show surface, resi 45 and chain D
color green, resi 45 and chain D
set transparency, 0.19999999999999996, resi 45 and chain D
select resi 469 and chain D
show surface, resi 469 and chain D
color green, resi 469 and chain D
set transparency, 0.19999999999999996, resi 469 and chain D
select resi 470 and chain D
show surface, resi 470 and chain D
color green, resi 470 and chain D
set transparency, 0.19999999999999996, resi 470 and chain D
select resi 42 and chain D
show surface, resi 42 and chain D
color green, resi 42 and chain D
set transparency, 0.19999999999999996, resi 42 and chain D
select resi 105 and chain D
show surface, resi 105 and chain D
color green, resi 105 and chain D
set transparency, 0.19999999999999996, resi 105 and chain D
select resi 69 and chain D
show surface, resi 69 and chain D
color green, resi 69 and chain D
set transparency, 0.19999999999999996, resi 69 and chain D
select resi 45 and chain D
show surface, resi 45 and chain D
color green, resi 45 and chain D
set transparency, 0.19999999999999996, resi 45 and chain D
select resi 469 and chain D
show surface, resi 469 and chain D
color green, resi 469 and chain D
set transparency, 0.19999999999999996, resi 469 and chain D
select resi 470 and chain D
show surface, resi 470 and chain D
color green, resi 470 and chain D
set transparency, 0.19999999999999996, resi 470 and chain D
zoom chain D
