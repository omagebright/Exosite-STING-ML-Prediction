# PyMOL script to highlight allosteric sites in 3L3V
fetch 3L3V
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 205 and chain A
show surface, resi 205 and chain A
color green, resi 205 and chain A
set transparency, 0.2, resi 205 and chain A
select resi 203 and chain A
show surface, resi 203 and chain A
color green, resi 203 and chain A
set transparency, 0.2, resi 203 and chain A
select resi 194 and chain A
show surface, resi 194 and chain A
color green, resi 194 and chain A
set transparency, 0.2, resi 194 and chain A
select resi 199 and chain A
show surface, resi 199 and chain A
color green, resi 199 and chain A
set transparency, 0.2, resi 199 and chain A
select resi 208 and chain A
show surface, resi 208 and chain A
color green, resi 208 and chain A
set transparency, 0.2, resi 208 and chain A
select resi 198 and chain A
show surface, resi 198 and chain A
color green, resi 198 and chain A
set transparency, 0.2, resi 198 and chain A
select resi 201 and chain A
show surface, resi 201 and chain A
color green, resi 201 and chain A
set transparency, 0.2, resi 201 and chain A
select resi 202 and chain A
show surface, resi 202 and chain A
color green, resi 202 and chain A
set transparency, 0.2, resi 202 and chain A
zoom chain A
