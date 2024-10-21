# PyMOL script to highlight allosteric sites in 4NBN
fetch 4NBN
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 64 and chain A
show surface, resi 64 and chain A
color green, resi 64 and chain A
set transparency, 0.2, resi 64 and chain A
select resi 193 and chain A
show surface, resi 193 and chain A
color green, resi 193 and chain A
set transparency, 0.2, resi 193 and chain A
select resi 161 and chain A
show surface, resi 161 and chain A
color green, resi 161 and chain A
set transparency, 0.2, resi 161 and chain A
select resi 220 and chain A
show surface, resi 220 and chain A
color green, resi 220 and chain A
set transparency, 0.2, resi 220 and chain A
select resi 120 and chain A
show surface, resi 120 and chain A
color green, resi 120 and chain A
set transparency, 0.2, resi 120 and chain A
select resi 121 and chain A
show surface, resi 121 and chain A
color green, resi 121 and chain A
set transparency, 0.2, resi 121 and chain A
select resi 163 and chain A
show surface, resi 163 and chain A
color green, resi 163 and chain A
set transparency, 0.2, resi 163 and chain A
select resi 218 and chain A
show surface, resi 218 and chain A
color green, resi 218 and chain A
set transparency, 0.2, resi 218 and chain A
zoom chain A
