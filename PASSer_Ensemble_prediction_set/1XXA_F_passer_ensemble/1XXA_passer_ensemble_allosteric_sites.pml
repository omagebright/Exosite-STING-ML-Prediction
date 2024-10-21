# PyMOL script to highlight allosteric sites in 1XXA
fetch 1XXA
hide everything
show cartoon, chain F
color spectrum, chain F
select resi 95 and chain F
show surface, resi 95 and chain F
color green, resi 95 and chain F
set transparency, 0.2, resi 95 and chain F
select resi 132 and chain F
show surface, resi 132 and chain F
color green, resi 132 and chain F
set transparency, 0.2, resi 132 and chain F
select resi 124 and chain F
show surface, resi 124 and chain F
color green, resi 124 and chain F
set transparency, 0.2, resi 124 and chain F
select resi 127 and chain F
show surface, resi 127 and chain F
color green, resi 127 and chain F
set transparency, 0.2, resi 127 and chain F
select resi 134 and chain F
show surface, resi 134 and chain F
color green, resi 134 and chain F
set transparency, 0.2, resi 134 and chain F
select resi 125 and chain F
show surface, resi 125 and chain F
color green, resi 125 and chain F
set transparency, 0.2, resi 125 and chain F
select resi 130 and chain F
show surface, resi 130 and chain F
color green, resi 130 and chain F
set transparency, 0.2, resi 130 and chain F
select resi 123 and chain F
show surface, resi 123 and chain F
color green, resi 123 and chain F
set transparency, 0.2, resi 123 and chain F
zoom chain F
