# PyMOL script to highlight allosteric sites in 1XXA
fetch 1XXA
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 83 and chain B
show surface, resi 83 and chain B
color green, resi 83 and chain B
set transparency, 0.2, resi 83 and chain B
select resi 86 and chain B
show surface, resi 86 and chain B
color green, resi 86 and chain B
set transparency, 0.2, resi 86 and chain B
select resi 152 and chain B
show surface, resi 152 and chain B
color green, resi 152 and chain B
set transparency, 0.2, resi 152 and chain B
select resi 151 and chain B
show surface, resi 151 and chain B
color green, resi 151 and chain B
set transparency, 0.2, resi 151 and chain B
select resi 108 and chain B
show surface, resi 108 and chain B
color green, resi 108 and chain B
set transparency, 0.2, resi 108 and chain B
select resi 82 and chain B
show surface, resi 82 and chain B
color green, resi 82 and chain B
set transparency, 0.2, resi 82 and chain B
select resi 111 and chain B
show surface, resi 111 and chain B
color green, resi 111 and chain B
set transparency, 0.2, resi 111 and chain B
select resi 81 and chain B
show surface, resi 81 and chain B
color green, resi 81 and chain B
set transparency, 0.2, resi 81 and chain B
zoom chain B
