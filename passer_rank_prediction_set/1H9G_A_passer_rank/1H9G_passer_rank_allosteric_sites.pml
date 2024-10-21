# PyMOL script to highlight allosteric sites in 1H9G
fetch 1H9G
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 41.514 and chain A
show surface, resi 41.514 and chain A
color green, resi 41.514 and chain A
set transparency, 0.2, resi 41.514 and chain A
select resi 40.057 and chain A
show surface, resi 40.057 and chain A
color green, resi 40.057 and chain A
set transparency, 0.2, resi 40.057 and chain A
select resi 41.770) and chain A
show surface, resi 41.770) and chain A
color green, resi 41.770) and chain A
set transparency, 0.2, resi 41.770) and chain A
zoom chain A
