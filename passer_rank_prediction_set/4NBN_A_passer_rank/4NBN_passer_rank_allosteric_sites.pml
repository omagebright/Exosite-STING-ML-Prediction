# PyMOL script to highlight allosteric sites in 4NBN
fetch 4NBN
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 154 and chain A
show surface, resi 154 and chain A
color green, resi 154 and chain A
set transparency, 0.2, resi 154 and chain A
select resi 37 and chain A
show surface, resi 37 and chain A
color green, resi 37 and chain A
set transparency, 0.2, resi 37 and chain A
select resi 284 and chain A
show surface, resi 284 and chain A
color green, resi 284 and chain A
set transparency, 0.2, resi 284 and chain A
select resi 152 and chain A
show surface, resi 152 and chain A
color green, resi 152 and chain A
set transparency, 0.2, resi 152 and chain A
select resi 153 and chain A
show surface, resi 153 and chain A
color green, resi 153 and chain A
set transparency, 0.2, resi 153 and chain A
select resi 112 and chain A
show surface, resi 112 and chain A
color green, resi 112 and chain A
set transparency, 0.2, resi 112 and chain A
select resi 41 and chain A
show surface, resi 41 and chain A
color green, resi 41 and chain A
set transparency, 0.2, resi 41 and chain A
select resi 38 and chain A
show surface, resi 38 and chain A
color green, resi 38 and chain A
set transparency, 0.2, resi 38 and chain A
select resi 155 and chain A
show surface, resi 155 and chain A
color green, resi 155 and chain A
set transparency, 0.2, resi 155 and chain A
zoom chain A
