# PyMOL script to highlight allosteric sites in 4KFB
fetch 4KFB
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 138 and chain B
show surface, resi 138 and chain B
color green, resi 138 and chain B
set transparency, 0.2, resi 138 and chain B
select resi 139 and chain B
show surface, resi 139 and chain B
color green, resi 139 and chain B
set transparency, 0.2, resi 139 and chain B
select resi 140 and chain B
show surface, resi 140 and chain B
color green, resi 140 and chain B
set transparency, 0.2, resi 140 and chain B
zoom chain B
