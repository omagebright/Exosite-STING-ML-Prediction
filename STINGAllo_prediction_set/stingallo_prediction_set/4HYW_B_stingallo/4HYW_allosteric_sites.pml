# PyMOL script to highlight allosteric sites in 4HYW
fetch 4HYW
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 482 and chain B
show surface, resi 482 and chain B
color green, resi 482 and chain B
set transparency, 0.19999999999999996, resi 482 and chain B
select resi 457 and chain B
show surface, resi 457 and chain B
color green, resi 457 and chain B
set transparency, 0.19999999999999996, resi 457 and chain B
select resi 481 and chain B
show surface, resi 481 and chain B
color green, resi 481 and chain B
set transparency, 0.19999999999999996, resi 481 and chain B
select resi 400 and chain B
show surface, resi 400 and chain B
color green, resi 400 and chain B
set transparency, 0.19999999999999996, resi 400 and chain B
select resi 454 and chain B
show surface, resi 454 and chain B
color green, resi 454 and chain B
set transparency, 0.19999999999999996, resi 454 and chain B
select resi 487 and chain B
show surface, resi 487 and chain B
color green, resi 487 and chain B
set transparency, 0.19999999999999996, resi 487 and chain B
select resi 401 and chain B
show surface, resi 401 and chain B
color green, resi 401 and chain B
set transparency, 0.19999999999999996, resi 401 and chain B
select resi 406 and chain B
show surface, resi 406 and chain B
color green, resi 406 and chain B
set transparency, 0.19999999999999996, resi 406 and chain B
select resi 403 and chain B
show surface, resi 403 and chain B
color green, resi 403 and chain B
set transparency, 0.19999999999999996, resi 403 and chain B
zoom chain B
