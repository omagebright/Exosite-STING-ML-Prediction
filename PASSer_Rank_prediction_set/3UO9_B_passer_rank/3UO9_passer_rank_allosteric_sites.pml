# PyMOL script to highlight allosteric sites in 3UO9
fetch 3UO9
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 320 and chain B
show surface, resi 320 and chain B
color green, resi 320 and chain B
set transparency, 0.2, resi 320 and chain B
select resi 322 and chain B
show surface, resi 322 and chain B
color green, resi 322 and chain B
set transparency, 0.2, resi 322 and chain B
select resi 323 and chain B
show surface, resi 323 and chain B
color green, resi 323 and chain B
set transparency, 0.2, resi 323 and chain B
select resi 394 and chain B
show surface, resi 394 and chain B
color green, resi 394 and chain B
set transparency, 0.2, resi 394 and chain B
select resi 321 and chain B
show surface, resi 321 and chain B
color green, resi 321 and chain B
set transparency, 0.2, resi 321 and chain B
zoom chain B
