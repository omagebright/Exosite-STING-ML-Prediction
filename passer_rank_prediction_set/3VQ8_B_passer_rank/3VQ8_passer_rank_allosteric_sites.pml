# PyMOL script to highlight allosteric sites in 3VQ8
fetch 3VQ8
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 125 and chain B
show surface, resi 125 and chain B
color green, resi 125 and chain B
set transparency, 0.2, resi 125 and chain B
select resi 129 and chain B
show surface, resi 129 and chain B
color green, resi 129 and chain B
set transparency, 0.2, resi 129 and chain B
select resi 128 and chain B
show surface, resi 128 and chain B
color green, resi 128 and chain B
set transparency, 0.2, resi 128 and chain B
select resi 132 and chain B
show surface, resi 132 and chain B
color green, resi 132 and chain B
set transparency, 0.2, resi 132 and chain B
select resi 102 and chain B
show surface, resi 102 and chain B
color green, resi 102 and chain B
set transparency, 0.2, resi 102 and chain B
zoom chain B
