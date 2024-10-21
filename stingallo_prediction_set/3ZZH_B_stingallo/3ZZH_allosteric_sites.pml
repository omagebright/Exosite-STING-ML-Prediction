# PyMOL script to highlight allosteric sites in 3ZZH
fetch 3ZZH
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 265 and chain B
show surface, resi 265 and chain B
color green, resi 265 and chain B
set transparency, 0.19999999999999996, resi 265 and chain B
select resi 347 and chain B
show surface, resi 347 and chain B
color green, resi 347 and chain B
set transparency, 0.19999999999999996, resi 347 and chain B
select resi 285 and chain B
show surface, resi 285 and chain B
color green, resi 285 and chain B
set transparency, 0.19999999999999996, resi 285 and chain B
select resi 90 and chain B
show surface, resi 90 and chain B
color green, resi 90 and chain B
set transparency, 0.19999999999999996, resi 90 and chain B
select resi 265 and chain B
show surface, resi 265 and chain B
color green, resi 265 and chain B
set transparency, 0.19999999999999996, resi 265 and chain B
select resi 347 and chain B
show surface, resi 347 and chain B
color green, resi 347 and chain B
set transparency, 0.19999999999999996, resi 347 and chain B
select resi 285 and chain B
show surface, resi 285 and chain B
color green, resi 285 and chain B
set transparency, 0.19999999999999996, resi 285 and chain B
select resi 90 and chain B
show surface, resi 90 and chain B
color green, resi 90 and chain B
set transparency, 0.19999999999999996, resi 90 and chain B
zoom chain B
