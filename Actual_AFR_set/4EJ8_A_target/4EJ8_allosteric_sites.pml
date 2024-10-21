# PyMOL script to highlight allosteric sites in 4EJ8
fetch 4EJ8
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 42 and chain A
show surface, resi 42 and chain A
color green, resi 42 and chain A
set transparency, 0.2, resi 42 and chain A
select resi 44 and chain A
show surface, resi 44 and chain A
color green, resi 44 and chain A
set transparency, 0.2, resi 44 and chain A
select resi 45 and chain A
show surface, resi 45 and chain A
color green, resi 45 and chain A
set transparency, 0.2, resi 45 and chain A
select resi 55 and chain A
show surface, resi 55 and chain A
color green, resi 55 and chain A
set transparency, 0.2, resi 55 and chain A
select resi 56 and chain A
show surface, resi 56 and chain A
color green, resi 56 and chain A
set transparency, 0.2, resi 56 and chain A
select resi 57 and chain A
show surface, resi 57 and chain A
color green, resi 57 and chain A
set transparency, 0.2, resi 57 and chain A
zoom chain A
