# PyMOL script to highlight allosteric sites in 2WU1
fetch 2WU1
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 1 and chain A
show surface, resi 1 and chain A
color green, resi 1 and chain A
set transparency, 0.2, resi 1 and chain A
select resi 2 and chain A
show surface, resi 2 and chain A
color green, resi 2 and chain A
set transparency, 0.2, resi 2 and chain A
select resi 258 and chain A
show surface, resi 258 and chain A
color green, resi 258 and chain A
set transparency, 0.2, resi 258 and chain A
zoom chain A
