# PyMOL script to highlight allosteric sites in 2ZFZ
fetch 2ZFZ
hide everything
show cartoon, chain F
color spectrum, chain F
select resi 98 and chain F
show surface, resi 98 and chain F
color green, resi 98 and chain F
set transparency, 0.2, resi 98 and chain F
select resi 134 and chain F
show surface, resi 134 and chain F
color green, resi 134 and chain F
set transparency, 0.2, resi 134 and chain F
select resi 130 and chain F
show surface, resi 130 and chain F
color green, resi 130 and chain F
set transparency, 0.2, resi 130 and chain F
select resi 97 and chain F
show surface, resi 97 and chain F
color green, resi 97 and chain F
set transparency, 0.2, resi 97 and chain F
select resi 133 and chain F
show surface, resi 133 and chain F
color green, resi 133 and chain F
set transparency, 0.2, resi 133 and chain F
select resi 96 and chain F
show surface, resi 96 and chain F
color green, resi 96 and chain F
set transparency, 0.2, resi 96 and chain F
zoom chain F
