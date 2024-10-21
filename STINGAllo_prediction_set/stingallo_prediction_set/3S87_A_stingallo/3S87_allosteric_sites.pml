# PyMOL script to highlight allosteric sites in 3S87
fetch 3S87
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 226 and chain A
show surface, resi 226 and chain A
color green, resi 226 and chain A
set transparency, 0.19999999999999996, resi 226 and chain A
select resi 262 and chain A
show surface, resi 262 and chain A
color green, resi 262 and chain A
set transparency, 0.19999999999999996, resi 262 and chain A
zoom chain A
