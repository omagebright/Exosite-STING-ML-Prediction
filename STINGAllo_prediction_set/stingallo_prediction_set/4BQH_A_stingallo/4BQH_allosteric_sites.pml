# PyMOL script to highlight allosteric sites in 4BQH
fetch 4BQH
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 276 and chain A
show surface, resi 276 and chain A
color green, resi 276 and chain A
set transparency, 0.19999999999999996, resi 276 and chain A
select resi 117 and chain A
show surface, resi 117 and chain A
color green, resi 117 and chain A
set transparency, 0.19999999999999996, resi 117 and chain A
select resi 118 and chain A
show surface, resi 118 and chain A
color green, resi 118 and chain A
set transparency, 0.19999999999999996, resi 118 and chain A
select resi 233 and chain A
show surface, resi 233 and chain A
color green, resi 233 and chain A
set transparency, 0.19999999999999996, resi 233 and chain A
select resi 360 and chain A
show surface, resi 360 and chain A
color green, resi 360 and chain A
set transparency, 0.19999999999999996, resi 360 and chain A
select resi 150 and chain A
show surface, resi 150 and chain A
color green, resi 150 and chain A
set transparency, 0.19999999999999996, resi 150 and chain A
select resi 276 and chain A
show surface, resi 276 and chain A
color green, resi 276 and chain A
set transparency, 0.19999999999999996, resi 276 and chain A
select resi 117 and chain A
show surface, resi 117 and chain A
color green, resi 117 and chain A
set transparency, 0.19999999999999996, resi 117 and chain A
select resi 118 and chain A
show surface, resi 118 and chain A
color green, resi 118 and chain A
set transparency, 0.19999999999999996, resi 118 and chain A
select resi 233 and chain A
show surface, resi 233 and chain A
color green, resi 233 and chain A
set transparency, 0.19999999999999996, resi 233 and chain A
select resi 360 and chain A
show surface, resi 360 and chain A
color green, resi 360 and chain A
set transparency, 0.19999999999999996, resi 360 and chain A
select resi 150 and chain A
show surface, resi 150 and chain A
color green, resi 150 and chain A
set transparency, 0.19999999999999996, resi 150 and chain A
zoom chain A
