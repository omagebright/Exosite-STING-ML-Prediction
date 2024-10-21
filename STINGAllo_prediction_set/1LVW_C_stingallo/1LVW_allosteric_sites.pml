# PyMOL script to highlight allosteric sites in 1LVW
fetch 1LVW
hide everything
show cartoon, chain C
color spectrum, chain C
# Highlight allosteric residues
select resi 6 and chain C
show surface, resi 6 and chain C
color green, resi 6 and chain C
set transparency, 0.19999999999999996, resi 6 and chain C
select resi 43 and chain C
show surface, resi 43 and chain C
color green, resi 43 and chain C
set transparency, 0.19999999999999996, resi 43 and chain C
select resi 106 and chain C
show surface, resi 106 and chain C
color green, resi 106 and chain C
set transparency, 0.19999999999999996, resi 106 and chain C
select resi 116 and chain C
show surface, resi 116 and chain C
color green, resi 116 and chain C
set transparency, 0.19999999999999996, resi 116 and chain C
select resi 6 and chain C
show surface, resi 6 and chain C
color green, resi 6 and chain C
set transparency, 0.19999999999999996, resi 6 and chain C
select resi 43 and chain C
show surface, resi 43 and chain C
color green, resi 43 and chain C
set transparency, 0.19999999999999996, resi 43 and chain C
select resi 106 and chain C
show surface, resi 106 and chain C
color green, resi 106 and chain C
set transparency, 0.19999999999999996, resi 106 and chain C
select resi 116 and chain C
show surface, resi 116 and chain C
color green, resi 116 and chain C
set transparency, 0.19999999999999996, resi 116 and chain C
zoom chain C
