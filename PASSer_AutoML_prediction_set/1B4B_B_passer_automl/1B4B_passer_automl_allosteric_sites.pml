# PyMOL script to highlight allosteric sites in 1B4B
fetch 1B4B
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 88 and chain B
show surface, resi 88 and chain B
color green, resi 88 and chain B
set transparency, 0.2, resi 88 and chain B
select resi 95 and chain B
show surface, resi 95 and chain B
color green, resi 95 and chain B
set transparency, 0.2, resi 95 and chain B
select resi 97 and chain B
show surface, resi 97 and chain B
color green, resi 97 and chain B
set transparency, 0.2, resi 97 and chain B
select resi 90 and chain B
show surface, resi 90 and chain B
color green, resi 90 and chain B
set transparency, 0.2, resi 90 and chain B
select resi 86 and chain B
show surface, resi 86 and chain B
color green, resi 86 and chain B
set transparency, 0.2, resi 86 and chain B
select resi 89 and chain B
show surface, resi 89 and chain B
color green, resi 89 and chain B
set transparency, 0.2, resi 89 and chain B
zoom chain B
