# PyMOL script to highlight allosteric sites in 3UO9
fetch 3UO9
hide everything
show cartoon, chain D
color spectrum, chain D
select resi 317 and chain D
show surface, resi 317 and chain D
color green, resi 317 and chain D
set transparency, 0.2, resi 317 and chain D
zoom chain D
