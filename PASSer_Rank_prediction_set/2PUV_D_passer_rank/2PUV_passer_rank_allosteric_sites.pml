# PyMOL script to highlight allosteric sites in 2PUV
fetch 2PUV
hide everything
show cartoon, chain D
color spectrum, chain D
select resi 491 and chain D
show surface, resi 491 and chain D
color green, resi 491 and chain D
set transparency, 0.2, resi 491 and chain D
select resi 382 and chain D
show surface, resi 382 and chain D
color green, resi 382 and chain D
set transparency, 0.2, resi 382 and chain D
select resi 490 and chain D
show surface, resi 490 and chain D
color green, resi 490 and chain D
set transparency, 0.2, resi 490 and chain D
select resi 372 and chain D
show surface, resi 372 and chain D
color green, resi 372 and chain D
set transparency, 0.2, resi 372 and chain D
select resi 383 and chain D
show surface, resi 383 and chain D
color green, resi 383 and chain D
set transparency, 0.2, resi 383 and chain D
select resi 384 and chain D
show surface, resi 384 and chain D
color green, resi 384 and chain D
set transparency, 0.2, resi 384 and chain D
select resi 492 and chain D
show surface, resi 492 and chain D
color green, resi 492 and chain D
set transparency, 0.2, resi 492 and chain D
zoom chain D
