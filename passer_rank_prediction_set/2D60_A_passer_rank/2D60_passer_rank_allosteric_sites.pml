# PyMOL script to highlight allosteric sites in 2D60
fetch 2D60
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 53 and chain A
show surface, resi 53 and chain A
color green, resi 53 and chain A
set transparency, 0.2, resi 53 and chain A
select resi 58 and chain A
show surface, resi 58 and chain A
color green, resi 58 and chain A
set transparency, 0.2, resi 58 and chain A
select resi 54 and chain A
show surface, resi 54 and chain A
color green, resi 54 and chain A
set transparency, 0.2, resi 54 and chain A
select resi 57 and chain A
show surface, resi 57 and chain A
color green, resi 57 and chain A
set transparency, 0.2, resi 57 and chain A
select resi 61 and chain A
show surface, resi 61 and chain A
color green, resi 61 and chain A
set transparency, 0.2, resi 61 and chain A
select resi 46 and chain A
show surface, resi 46 and chain A
color green, resi 46 and chain A
set transparency, 0.2, resi 46 and chain A
zoom chain A
