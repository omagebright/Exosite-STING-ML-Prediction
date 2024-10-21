# PyMOL script to highlight allosteric sites in 2ZFZ
fetch 2ZFZ
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 126 and chain B
show surface, resi 126 and chain B
color green, resi 126 and chain B
set transparency, 0.2, resi 126 and chain B
select resi 129 and chain B
show surface, resi 129 and chain B
color green, resi 129 and chain B
set transparency, 0.2, resi 129 and chain B
select resi 125 and chain B
show surface, resi 125 and chain B
color green, resi 125 and chain B
set transparency, 0.2, resi 125 and chain B
select resi 96 and chain B
show surface, resi 96 and chain B
color green, resi 96 and chain B
set transparency, 0.2, resi 96 and chain B
select resi 133 and chain B
show surface, resi 133 and chain B
color green, resi 133 and chain B
set transparency, 0.2, resi 133 and chain B
zoom chain B
