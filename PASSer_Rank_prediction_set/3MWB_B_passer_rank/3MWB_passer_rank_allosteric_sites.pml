# PyMOL script to highlight allosteric sites in 3MWB
fetch 3MWB
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 207 and chain B
show surface, resi 207 and chain B
color green, resi 207 and chain B
set transparency, 0.2, resi 207 and chain B
select resi 205 and chain B
show surface, resi 205 and chain B
color green, resi 205 and chain B
set transparency, 0.2, resi 205 and chain B
select resi 209 and chain B
show surface, resi 209 and chain B
color green, resi 209 and chain B
set transparency, 0.2, resi 209 and chain B
select resi 206 and chain B
show surface, resi 206 and chain B
color green, resi 206 and chain B
set transparency, 0.2, resi 206 and chain B
select resi 267 and chain B
show surface, resi 267 and chain B
color green, resi 267 and chain B
set transparency, 0.2, resi 267 and chain B
select resi 212 and chain B
show surface, resi 212 and chain B
color green, resi 212 and chain B
set transparency, 0.2, resi 212 and chain B
select resi 215 and chain B
show surface, resi 215 and chain B
color green, resi 215 and chain B
set transparency, 0.2, resi 215 and chain B
zoom chain B
