# PyMOL script to highlight allosteric sites in 3F6G
fetch 3F6G
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 423 and chain A
show surface, resi 423 and chain A
color green, resi 423 and chain A
set transparency, 0.2, resi 423 and chain A
select resi 421 and chain A
show surface, resi 421 and chain A
color green, resi 421 and chain A
set transparency, 0.2, resi 421 and chain A
select resi 397 and chain A
show surface, resi 397 and chain A
color green, resi 397 and chain A
set transparency, 0.2, resi 397 and chain A
select resi 412 and chain A
show surface, resi 412 and chain A
color green, resi 412 and chain A
set transparency, 0.2, resi 412 and chain A
select resi 411 and chain A
show surface, resi 411 and chain A
color green, resi 411 and chain A
set transparency, 0.2, resi 411 and chain A
select resi 396 and chain A
show surface, resi 396 and chain A
color green, resi 396 and chain A
set transparency, 0.2, resi 396 and chain A
select resi 422 and chain A
show surface, resi 422 and chain A
color green, resi 422 and chain A
set transparency, 0.2, resi 422 and chain A
select resi 410 and chain A
show surface, resi 410 and chain A
color green, resi 410 and chain A
set transparency, 0.2, resi 410 and chain A
select resi 398 and chain A
show surface, resi 398 and chain A
color green, resi 398 and chain A
set transparency, 0.2, resi 398 and chain A
zoom chain A
