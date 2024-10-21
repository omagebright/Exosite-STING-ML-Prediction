# PyMOL script to highlight allosteric sites in 2Q5O
fetch 2Q5O
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 397 and chain A
show surface, resi 397 and chain A
color green, resi 397 and chain A
set transparency, 0.19999999999999996, resi 397 and chain A
select resi 214 and chain A
show surface, resi 214 and chain A
color green, resi 214 and chain A
set transparency, 0.19999999999999996, resi 214 and chain A
select resi 215 and chain A
show surface, resi 215 and chain A
color green, resi 215 and chain A
set transparency, 0.19999999999999996, resi 215 and chain A
select resi 219 and chain A
show surface, resi 219 and chain A
color green, resi 219 and chain A
set transparency, 0.19999999999999996, resi 219 and chain A
select resi 242 and chain A
show surface, resi 242 and chain A
color green, resi 242 and chain A
set transparency, 0.19999999999999996, resi 242 and chain A
select resi 375 and chain A
show surface, resi 375 and chain A
color green, resi 375 and chain A
set transparency, 0.19999999999999996, resi 375 and chain A
select resi 395 and chain A
show surface, resi 395 and chain A
color green, resi 395 and chain A
set transparency, 0.19999999999999996, resi 395 and chain A
select resi 238 and chain A
show surface, resi 238 and chain A
color green, resi 238 and chain A
set transparency, 0.19999999999999996, resi 238 and chain A
select resi 396 and chain A
show surface, resi 396 and chain A
color green, resi 396 and chain A
set transparency, 0.19999999999999996, resi 396 and chain A
select resi 211 and chain A
show surface, resi 211 and chain A
color green, resi 211 and chain A
set transparency, 0.19999999999999996, resi 211 and chain A
zoom chain A
