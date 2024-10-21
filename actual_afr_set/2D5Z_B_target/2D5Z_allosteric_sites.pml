# PyMOL script to highlight allosteric sites in 2D5Z
fetch 2D5Z
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 35 and chain B
show surface, resi 35 and chain B
color green, resi 35 and chain B
set transparency, 0.2, resi 35 and chain B
select resi 37 and chain B
show surface, resi 37 and chain B
color green, resi 37 and chain B
set transparency, 0.2, resi 37 and chain B
select resi 104 and chain B
show surface, resi 104 and chain B
color green, resi 104 and chain B
set transparency, 0.2, resi 104 and chain B
select resi 105 and chain B
show surface, resi 105 and chain B
color green, resi 105 and chain B
set transparency, 0.2, resi 105 and chain B
select resi 108 and chain B
show surface, resi 108 and chain B
color green, resi 108 and chain B
set transparency, 0.2, resi 108 and chain B
select resi 135 and chain B
show surface, resi 135 and chain B
color green, resi 135 and chain B
set transparency, 0.2, resi 135 and chain B
zoom chain B
