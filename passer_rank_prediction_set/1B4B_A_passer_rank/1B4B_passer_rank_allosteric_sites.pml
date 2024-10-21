# PyMOL script to highlight allosteric sites in 1B4B
fetch 1B4B
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 115 and chain A
show surface, resi 115 and chain A
color green, resi 115 and chain A
set transparency, 0.2, resi 115 and chain A
select resi 119 and chain A
show surface, resi 119 and chain A
color green, resi 119 and chain A
set transparency, 0.2, resi 119 and chain A
select resi 120 and chain A
show surface, resi 120 and chain A
color green, resi 120 and chain A
set transparency, 0.2, resi 120 and chain A
select resi 110 and chain A
show surface, resi 110 and chain A
color green, resi 110 and chain A
set transparency, 0.2, resi 110 and chain A
select resi 111 and chain A
show surface, resi 111 and chain A
color green, resi 111 and chain A
set transparency, 0.2, resi 111 and chain A
select resi 118 and chain A
show surface, resi 118 and chain A
color green, resi 118 and chain A
set transparency, 0.2, resi 118 and chain A
select resi 114 and chain A
show surface, resi 114 and chain A
color green, resi 114 and chain A
set transparency, 0.2, resi 114 and chain A
zoom chain A
