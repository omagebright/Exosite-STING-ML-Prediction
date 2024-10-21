# PyMOL script to highlight allosteric sites in 1LVW
fetch 1LVW
hide everything
show cartoon, chain C
color spectrum, chain C
select resi 224 and chain C
show surface, resi 224 and chain C
color green, resi 224 and chain C
set transparency, 0.2, resi 224 and chain C
select resi 221 and chain C
show surface, resi 221 and chain C
color green, resi 221 and chain C
set transparency, 0.2, resi 221 and chain C
select resi 223 and chain C
show surface, resi 223 and chain C
color green, resi 223 and chain C
set transparency, 0.2, resi 223 and chain C
select resi 225 and chain C
show surface, resi 225 and chain C
color green, resi 225 and chain C
set transparency, 0.2, resi 225 and chain C
select resi 109 and chain C
show surface, resi 109 and chain C
color green, resi 109 and chain C
set transparency, 0.2, resi 109 and chain C
select resi 222 and chain C
show surface, resi 222 and chain C
color green, resi 222 and chain C
set transparency, 0.2, resi 222 and chain C
select resi 143 and chain C
show surface, resi 143 and chain C
color green, resi 143 and chain C
set transparency, 0.2, resi 143 and chain C
select resi 135 and chain C
show surface, resi 135 and chain C
color green, resi 135 and chain C
set transparency, 0.2, resi 135 and chain C
select resi 23 and chain C
show surface, resi 23 and chain C
color green, resi 23 and chain C
set transparency, 0.2, resi 23 and chain C
select resi 137 and chain C
show surface, resi 137 and chain C
color green, resi 137 and chain C
set transparency, 0.2, resi 137 and chain C
select resi 108 and chain C
show surface, resi 108 and chain C
color green, resi 108 and chain C
set transparency, 0.2, resi 108 and chain C
zoom chain C
