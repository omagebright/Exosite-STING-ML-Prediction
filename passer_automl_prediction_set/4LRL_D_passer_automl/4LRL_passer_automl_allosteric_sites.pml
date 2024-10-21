# PyMOL script to highlight allosteric sites in 4LRL
fetch 4LRL
hide everything
show cartoon, chain D
color spectrum, chain D
select resi 0.456 and chain D
show surface, resi 0.456 and chain D
color green, resi 0.456 and chain D
set transparency, 0.2, resi 0.456 and chain D
select resi 1.333) and chain D
show surface, resi 1.333) and chain D
color green, resi 1.333) and chain D
set transparency, 0.2, resi 1.333) and chain D
zoom chain D
