# PyMOL script to highlight allosteric sites in 1QW7
fetch 1QW7
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 11.482 and chain B
show surface, resi 11.482 and chain B
color green, resi 11.482 and chain B
set transparency, 0.2, resi 11.482 and chain B
select resi 11.545 and chain B
show surface, resi 11.545 and chain B
color green, resi 11.545 and chain B
set transparency, 0.2, resi 11.545 and chain B
select resi 11.297) and chain B
show surface, resi 11.297) and chain B
color green, resi 11.297) and chain B
set transparency, 0.2, resi 11.297) and chain B
zoom chain B
