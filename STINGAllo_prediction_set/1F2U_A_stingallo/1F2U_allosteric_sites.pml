# PyMOL script to highlight allosteric sites in 1F2U
fetch 1F2U
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 38 and chain A
show surface, resi 38 and chain A
color green, resi 38 and chain A
set transparency, 0.19999999999999996, resi 38 and chain A
select resi 38 and chain A
show surface, resi 38 and chain A
color green, resi 38 and chain A
set transparency, 0.19999999999999996, resi 38 and chain A
zoom chain A
