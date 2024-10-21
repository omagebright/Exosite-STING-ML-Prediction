# PyMOL script to highlight allosteric sites in 2ZFZ
fetch 2ZFZ
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 141 and chain B
show surface, resi 141 and chain B
color green, resi 141 and chain B
set transparency, 0.2, resi 141 and chain B
select resi 131 and chain B
show surface, resi 131 and chain B
color green, resi 131 and chain B
set transparency, 0.2, resi 131 and chain B
select resi 139 and chain B
show surface, resi 139 and chain B
color green, resi 139 and chain B
set transparency, 0.2, resi 139 and chain B
select resi 135 and chain B
show surface, resi 135 and chain B
color green, resi 135 and chain B
set transparency, 0.2, resi 135 and chain B
select resi 132 and chain B
show surface, resi 132 and chain B
color green, resi 132 and chain B
set transparency, 0.2, resi 132 and chain B
select resi 154 and chain B
show surface, resi 154 and chain B
color green, resi 154 and chain B
set transparency, 0.2, resi 154 and chain B
select resi 136 and chain B
show surface, resi 136 and chain B
color green, resi 136 and chain B
set transparency, 0.2, resi 136 and chain B
select resi 140 and chain B
show surface, resi 140 and chain B
color green, resi 140 and chain B
set transparency, 0.2, resi 140 and chain B
zoom chain B
