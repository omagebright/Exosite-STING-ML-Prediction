# PyMOL script to highlight allosteric sites in 2D5X
fetch 2D5X
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 112 and chain B
show surface, resi 112 and chain B
color green, resi 112 and chain B
set transparency, 0.2, resi 112 and chain B
select resi 35 and chain B
show surface, resi 35 and chain B
color green, resi 35 and chain B
set transparency, 0.2, resi 35 and chain B
select resi 109 and chain B
show surface, resi 109 and chain B
color green, resi 109 and chain B
set transparency, 0.2, resi 109 and chain B
select resi 30 and chain B
show surface, resi 30 and chain B
color green, resi 30 and chain B
set transparency, 0.2, resi 30 and chain B
select resi 34 and chain B
show surface, resi 34 and chain B
color green, resi 34 and chain B
set transparency, 0.2, resi 34 and chain B
select resi 108 and chain B
show surface, resi 108 and chain B
color green, resi 108 and chain B
set transparency, 0.2, resi 108 and chain B
zoom chain B
