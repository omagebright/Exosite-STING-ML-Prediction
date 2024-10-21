# PyMOL script to highlight allosteric sites in 1B4B
fetch 1B4B
hide everything
show cartoon, chain C
color spectrum, chain C
select resi 139 and chain C
show surface, resi 139 and chain C
color green, resi 139 and chain C
set transparency, 0.2, resi 139 and chain C
select resi 140 and chain C
show surface, resi 140 and chain C
color green, resi 140 and chain C
set transparency, 0.2, resi 140 and chain C
select resi 136 and chain C
show surface, resi 136 and chain C
color green, resi 136 and chain C
set transparency, 0.2, resi 136 and chain C
select resi 143 and chain C
show surface, resi 143 and chain C
color green, resi 143 and chain C
set transparency, 0.2, resi 143 and chain C
zoom chain C
