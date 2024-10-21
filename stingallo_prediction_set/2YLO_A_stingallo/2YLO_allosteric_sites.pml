# PyMOL script to highlight allosteric sites in 2YLO
fetch 2YLO
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 894 and chain A
show surface, resi 894 and chain A
color green, resi 894 and chain A
set transparency, 0.19999999999999996, resi 894 and chain A
select resi 730 and chain A
show surface, resi 730 and chain A
color green, resi 730 and chain A
set transparency, 0.19999999999999996, resi 730 and chain A
select resi 894 and chain A
show surface, resi 894 and chain A
color green, resi 894 and chain A
set transparency, 0.19999999999999996, resi 894 and chain A
select resi 730 and chain A
show surface, resi 730 and chain A
color green, resi 730 and chain A
set transparency, 0.19999999999999996, resi 730 and chain A
zoom chain A
