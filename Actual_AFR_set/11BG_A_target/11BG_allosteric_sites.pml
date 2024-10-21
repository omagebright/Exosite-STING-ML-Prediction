# PyMOL script to highlight allosteric sites in 11BG
fetch 11BG
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 14 and chain A
show surface, resi 14 and chain A
color green, resi 14 and chain A
set transparency, 0.2, resi 14 and chain A
select resi 15 and chain A
show surface, resi 15 and chain A
color green, resi 15 and chain A
set transparency, 0.2, resi 15 and chain A
select resi 24 and chain A
show surface, resi 24 and chain A
color green, resi 24 and chain A
set transparency, 0.2, resi 24 and chain A
select resi 27 and chain A
show surface, resi 27 and chain A
color green, resi 27 and chain A
set transparency, 0.2, resi 27 and chain A
select resi 28 and chain A
show surface, resi 28 and chain A
color green, resi 28 and chain A
set transparency, 0.2, resi 28 and chain A
select resi 31 and chain A
show surface, resi 31 and chain A
color green, resi 31 and chain A
set transparency, 0.2, resi 31 and chain A
select resi 94 and chain A
show surface, resi 94 and chain A
color green, resi 94 and chain A
set transparency, 0.2, resi 94 and chain A
select resi 95 and chain A
show surface, resi 95 and chain A
color green, resi 95 and chain A
set transparency, 0.2, resi 95 and chain A
zoom chain A
