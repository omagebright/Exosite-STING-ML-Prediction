# PyMOL script to highlight allosteric sites in 3KGF
fetch 3KGF
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 6.351 and chain B
show surface, resi 6.351 and chain B
color green, resi 6.351 and chain B
set transparency, 0.2, resi 6.351 and chain B
select resi 4.495) and chain B
show surface, resi 4.495) and chain B
color green, resi 4.495) and chain B
set transparency, 0.2, resi 4.495) and chain B
zoom chain B
