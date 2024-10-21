# PyMOL script to highlight allosteric sites in 4KFB
fetch 4KFB
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 24 and chain B
show surface, resi 24 and chain B
color green, resi 24 and chain B
set transparency, 0.2, resi 24 and chain B
select resi 390 and chain B
show surface, resi 390 and chain B
color green, resi 390 and chain B
set transparency, 0.2, resi 390 and chain B
select resi 78 and chain B
show surface, resi 78 and chain B
color green, resi 78 and chain B
set transparency, 0.2, resi 78 and chain B
select resi 391 and chain B
show surface, resi 391 and chain B
color green, resi 391 and chain B
set transparency, 0.2, resi 391 and chain B
select resi 387 and chain B
show surface, resi 387 and chain B
color green, resi 387 and chain B
set transparency, 0.2, resi 387 and chain B
select resi 402 and chain B
show surface, resi 402 and chain B
color green, resi 402 and chain B
set transparency, 0.2, resi 402 and chain B
select resi 22 and chain B
show surface, resi 22 and chain B
color green, resi 22 and chain B
set transparency, 0.2, resi 22 and chain B
zoom chain B
