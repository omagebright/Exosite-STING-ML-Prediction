# PyMOL script to highlight allosteric sites in 2D5X
fetch 2D5X
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 104 and chain B
show surface, resi 104 and chain B
color green, resi 104 and chain B
set transparency, 0.2, resi 104 and chain B
select resi 134 and chain B
show surface, resi 134 and chain B
color green, resi 134 and chain B
set transparency, 0.2, resi 134 and chain B
select resi 135 and chain B
show surface, resi 135 and chain B
color green, resi 135 and chain B
set transparency, 0.2, resi 135 and chain B
select resi 131 and chain B
show surface, resi 131 and chain B
color green, resi 131 and chain B
set transparency, 0.2, resi 131 and chain B
select resi 108 and chain B
show surface, resi 108 and chain B
color green, resi 108 and chain B
set transparency, 0.2, resi 108 and chain B
zoom chain B
