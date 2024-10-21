# PyMOL script to highlight allosteric sites in 4G8O
fetch 4G8O
hide everything
show cartoon, chain C
color spectrum, chain C
# Highlight allosteric residues
select resi 268 and chain C
show surface, resi 268 and chain C
color green, resi 268 and chain C
set transparency, 0.19999999999999996, resi 268 and chain C
select resi 208 and chain C
show surface, resi 208 and chain C
color green, resi 208 and chain C
set transparency, 0.19999999999999996, resi 208 and chain C
select resi 227 and chain C
show surface, resi 227 and chain C
color green, resi 227 and chain C
set transparency, 0.19999999999999996, resi 227 and chain C
select resi 268 and chain C
show surface, resi 268 and chain C
color green, resi 268 and chain C
set transparency, 0.19999999999999996, resi 268 and chain C
select resi 208 and chain C
show surface, resi 208 and chain C
color green, resi 208 and chain C
set transparency, 0.19999999999999996, resi 208 and chain C
select resi 227 and chain C
show surface, resi 227 and chain C
color green, resi 227 and chain C
set transparency, 0.19999999999999996, resi 227 and chain C
zoom chain C
