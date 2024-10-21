# PyMOL script to highlight allosteric sites in 1LVW
fetch 1LVW
hide everything
show cartoon, chain C
color spectrum, chain C
select resi 16.222 and chain C
show surface, resi 16.222 and chain C
color green, resi 16.222 and chain C
set transparency, 0.2, resi 16.222 and chain C
select resi 14.732 and chain C
show surface, resi 14.732 and chain C
color green, resi 14.732 and chain C
set transparency, 0.2, resi 14.732 and chain C
select resi 13.034) and chain C
show surface, resi 13.034) and chain C
color green, resi 13.034) and chain C
set transparency, 0.2, resi 13.034) and chain C
zoom chain C
