# PyMOL script to highlight allosteric sites in 4KFB
fetch 4KFB
hide everything
show cartoon, chain B
color spectrum, chain B
# Highlight allosteric residues
select resi 51 and chain B
show surface, resi 51 and chain B
color green, resi 51 and chain B
set transparency, 0.19999999999999996, resi 51 and chain B
select resi 49 and chain B
show surface, resi 49 and chain B
color green, resi 49 and chain B
set transparency, 0.19999999999999996, resi 49 and chain B
select resi 52 and chain B
show surface, resi 52 and chain B
color green, resi 52 and chain B
set transparency, 0.19999999999999996, resi 52 and chain B
zoom chain B
