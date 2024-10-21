# PyMOL script to highlight allosteric sites in 1ZDS
fetch 1ZDS
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 60 and chain B
show surface, resi 60 and chain B
color green, resi 60 and chain B
set transparency, 0.2, resi 60 and chain B
select resi 62 and chain B
show surface, resi 62 and chain B
color green, resi 62 and chain B
set transparency, 0.2, resi 62 and chain B
select resi 93 and chain B
show surface, resi 93 and chain B
color green, resi 93 and chain B
set transparency, 0.2, resi 93 and chain B
select resi 95 and chain B
show surface, resi 95 and chain B
color green, resi 95 and chain B
set transparency, 0.2, resi 95 and chain B
select resi 144 and chain B
show surface, resi 144 and chain B
color green, resi 144 and chain B
set transparency, 0.2, resi 144 and chain B
select resi 145 and chain B
show surface, resi 145 and chain B
color green, resi 145 and chain B
set transparency, 0.2, resi 145 and chain B
select resi 148 and chain B
show surface, resi 148 and chain B
color green, resi 148 and chain B
set transparency, 0.2, resi 148 and chain B
zoom chain B
