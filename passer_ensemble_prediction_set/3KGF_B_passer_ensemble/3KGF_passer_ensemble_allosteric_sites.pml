# PyMOL script to highlight allosteric sites in 3KGF
fetch 3KGF
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 0.092 and chain B
show surface, resi 0.092 and chain B
color green, resi 0.092 and chain B
set transparency, 0.2, resi 0.092 and chain B
select resi 1.034) and chain B
show surface, resi 1.034) and chain B
color green, resi 1.034) and chain B
set transparency, 0.2, resi 1.034) and chain B
zoom chain B
