# PyMOL script to highlight allosteric sites in 4JKT
fetch 4JKT
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 533 and chain A
show surface, resi 533 and chain A
color green, resi 533 and chain A
set transparency, 0.2, resi 533 and chain A
select resi 527 and chain A
show surface, resi 527 and chain A
color green, resi 527 and chain A
set transparency, 0.2, resi 527 and chain A
select resi 535 and chain A
show surface, resi 535 and chain A
color green, resi 535 and chain A
set transparency, 0.2, resi 535 and chain A
select resi 524 and chain A
show surface, resi 524 and chain A
color green, resi 524 and chain A
set transparency, 0.2, resi 524 and chain A
select resi 528 and chain A
show surface, resi 528 and chain A
color green, resi 528 and chain A
set transparency, 0.2, resi 528 and chain A
select resi 544 and chain A
show surface, resi 544 and chain A
color green, resi 544 and chain A
set transparency, 0.2, resi 544 and chain A
select resi 480 and chain A
show surface, resi 480 and chain A
color green, resi 480 and chain A
set transparency, 0.2, resi 480 and chain A
select resi 536 and chain A
show surface, resi 536 and chain A
color green, resi 536 and chain A
set transparency, 0.2, resi 536 and chain A
zoom chain A
