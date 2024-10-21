# PyMOL script to highlight allosteric sites in 3QEL
fetch 3QEL
hide everything
show cartoon, chain C
color spectrum, chain C
# Highlight allosteric residues
select resi 133 and chain C
show surface, resi 133 and chain C
color green, resi 133 and chain C
set transparency, 0.19999999999999996, resi 133 and chain C
select resi 132 and chain C
show surface, resi 132 and chain C
color green, resi 132 and chain C
set transparency, 0.19999999999999996, resi 132 and chain C
select resi 133 and chain C
show surface, resi 133 and chain C
color green, resi 133 and chain C
set transparency, 0.19999999999999996, resi 133 and chain C
select resi 132 and chain C
show surface, resi 132 and chain C
color green, resi 132 and chain C
set transparency, 0.19999999999999996, resi 132 and chain C
zoom chain C
