# PyMOL script to highlight allosteric sites in 4ETZ
fetch 4ETZ
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 367 and chain A
show surface, resi 367 and chain A
color green, resi 367 and chain A
set transparency, 0.19999999999999996, resi 367 and chain A
select resi 370 and chain A
show surface, resi 370 and chain A
color green, resi 370 and chain A
set transparency, 0.19999999999999996, resi 370 and chain A
select resi 395 and chain A
show surface, resi 395 and chain A
color green, resi 395 and chain A
set transparency, 0.19999999999999996, resi 395 and chain A
select resi 388 and chain A
show surface, resi 388 and chain A
color green, resi 388 and chain A
set transparency, 0.19999999999999996, resi 388 and chain A
select resi 389 and chain A
show surface, resi 389 and chain A
color green, resi 389 and chain A
set transparency, 0.19999999999999996, resi 389 and chain A
select resi 391 and chain A
show surface, resi 391 and chain A
color green, resi 391 and chain A
set transparency, 0.19999999999999996, resi 391 and chain A
select resi 399 and chain A
show surface, resi 399 and chain A
color green, resi 399 and chain A
set transparency, 0.19999999999999996, resi 399 and chain A
zoom chain A
