# PyMOL script to highlight allosteric sites in 3QEL
fetch 3QEL
hide everything
show cartoon, chain C
color spectrum, chain C
select resi 374 and chain C
show surface, resi 374 and chain C
color green, resi 374 and chain C
set transparency, 0.2, resi 374 and chain C
select resi 157 and chain C
show surface, resi 157 and chain C
color green, resi 157 and chain C
set transparency, 0.2, resi 157 and chain C
select resi 288 and chain C
show surface, resi 288 and chain C
color green, resi 288 and chain C
set transparency, 0.2, resi 288 and chain C
select resi 158 and chain C
show surface, resi 158 and chain C
color green, resi 158 and chain C
set transparency, 0.2, resi 158 and chain C
select resi 154 and chain C
show surface, resi 154 and chain C
color green, resi 154 and chain C
set transparency, 0.2, resi 154 and chain C
select resi 400 and chain C
show surface, resi 400 and chain C
color green, resi 400 and chain C
set transparency, 0.2, resi 400 and chain C
select resi 385 and chain C
show surface, resi 385 and chain C
color green, resi 385 and chain C
set transparency, 0.2, resi 385 and chain C
select resi 393 and chain C
show surface, resi 393 and chain C
color green, resi 393 and chain C
set transparency, 0.2, resi 393 and chain C
select resi 386 and chain C
show surface, resi 386 and chain C
color green, resi 386 and chain C
set transparency, 0.2, resi 386 and chain C
select resi 395 and chain C
show surface, resi 395 and chain C
color green, resi 395 and chain C
set transparency, 0.2, resi 395 and chain C
zoom chain C
