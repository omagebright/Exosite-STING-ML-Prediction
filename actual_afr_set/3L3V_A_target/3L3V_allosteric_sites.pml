# PyMOL script to highlight allosteric sites in 3L3V
fetch 3L3V
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 87 and chain A
show surface, resi 87 and chain A
color green, resi 87 and chain A
set transparency, 0.2, resi 87 and chain A
select resi 88 and chain A
show surface, resi 88 and chain A
color green, resi 88 and chain A
set transparency, 0.2, resi 88 and chain A
select resi 89 and chain A
show surface, resi 89 and chain A
color green, resi 89 and chain A
set transparency, 0.2, resi 89 and chain A
select resi 96 and chain A
show surface, resi 96 and chain A
color green, resi 96 and chain A
set transparency, 0.2, resi 96 and chain A
select resi 99 and chain A
show surface, resi 99 and chain A
color green, resi 99 and chain A
set transparency, 0.2, resi 99 and chain A
select resi 103 and chain A
show surface, resi 103 and chain A
color green, resi 103 and chain A
set transparency, 0.2, resi 103 and chain A
select resi 173 and chain A
show surface, resi 173 and chain A
color green, resi 173 and chain A
set transparency, 0.2, resi 173 and chain A
zoom chain A
