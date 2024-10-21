# PyMOL script to highlight allosteric sites in 3UO9
fetch 3UO9
hide everything
show cartoon, chain C
color spectrum, chain C
select resi 323 and chain C
show surface, resi 323 and chain C
color green, resi 323 and chain C
set transparency, 0.2, resi 323 and chain C
select resi 322 and chain C
show surface, resi 322 and chain C
color green, resi 322 and chain C
set transparency, 0.2, resi 322 and chain C
select resi 321 and chain C
show surface, resi 321 and chain C
color green, resi 321 and chain C
set transparency, 0.2, resi 321 and chain C
select resi 324 and chain C
show surface, resi 324 and chain C
color green, resi 324 and chain C
set transparency, 0.2, resi 324 and chain C
select resi 327 and chain C
show surface, resi 327 and chain C
color green, resi 327 and chain C
set transparency, 0.2, resi 327 and chain C
select resi 320 and chain C
show surface, resi 320 and chain C
color green, resi 320 and chain C
set transparency, 0.2, resi 320 and chain C
select resi 394 and chain C
show surface, resi 394 and chain C
color green, resi 394 and chain C
set transparency, 0.2, resi 394 and chain C
zoom chain C
