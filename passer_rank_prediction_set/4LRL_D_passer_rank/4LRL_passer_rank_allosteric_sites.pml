# PyMOL script to highlight allosteric sites in 4LRL
fetch 4LRL
hide everything
show cartoon, chain D
color spectrum, chain D
select resi 374 and chain D
show surface, resi 374 and chain D
color green, resi 374 and chain D
set transparency, 0.2, resi 374 and chain D
select resi 408 and chain D
show surface, resi 408 and chain D
color green, resi 408 and chain D
set transparency, 0.2, resi 408 and chain D
select resi 375 and chain D
show surface, resi 375 and chain D
color green, resi 375 and chain D
set transparency, 0.2, resi 375 and chain D
select resi 236 and chain D
show surface, resi 236 and chain D
color green, resi 236 and chain D
set transparency, 0.2, resi 236 and chain D
select resi 235 and chain D
show surface, resi 235 and chain D
color green, resi 235 and chain D
set transparency, 0.2, resi 235 and chain D
select resi 409 and chain D
show surface, resi 409 and chain D
color green, resi 409 and chain D
set transparency, 0.2, resi 409 and chain D
select resi 232 and chain D
show surface, resi 232 and chain D
color green, resi 232 and chain D
set transparency, 0.2, resi 232 and chain D
select resi 405 and chain D
show surface, resi 405 and chain D
color green, resi 405 and chain D
set transparency, 0.2, resi 405 and chain D
zoom chain D
