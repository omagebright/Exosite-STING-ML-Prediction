# PyMOL script to highlight allosteric sites in 1F2U
fetch 1F2U
hide everything
show cartoon, chain C
color spectrum, chain C
select resi 12 and chain C
show surface, resi 12 and chain C
color green, resi 12 and chain C
set transparency, 0.2, resi 12 and chain C
select resi 32 and chain C
show surface, resi 32 and chain C
color green, resi 32 and chain C
set transparency, 0.2, resi 32 and chain C
select resi 36 and chain C
show surface, resi 36 and chain C
color green, resi 36 and chain C
set transparency, 0.2, resi 36 and chain C
select resi 33 and chain C
show surface, resi 33 and chain C
color green, resi 33 and chain C
set transparency, 0.2, resi 33 and chain C
select resi 37 and chain C
show surface, resi 37 and chain C
color green, resi 37 and chain C
set transparency, 0.2, resi 37 and chain C
select resi 34 and chain C
show surface, resi 34 and chain C
color green, resi 34 and chain C
set transparency, 0.2, resi 34 and chain C
select resi 38 and chain C
show surface, resi 38 and chain C
color green, resi 38 and chain C
set transparency, 0.2, resi 38 and chain C
select resi 31 and chain C
show surface, resi 31 and chain C
color green, resi 31 and chain C
set transparency, 0.2, resi 31 and chain C
select resi 140 and chain C
show surface, resi 140 and chain C
color green, resi 140 and chain C
set transparency, 0.2, resi 140 and chain C
select resi 35 and chain C
show surface, resi 35 and chain C
color green, resi 35 and chain C
set transparency, 0.2, resi 35 and chain C
zoom chain C
