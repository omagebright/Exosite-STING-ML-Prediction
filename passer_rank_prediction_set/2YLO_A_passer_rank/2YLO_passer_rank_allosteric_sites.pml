# PyMOL script to highlight allosteric sites in 2YLO
fetch 2YLO
hide everything
show cartoon, chain A
color spectrum, chain A
select resi -28.228 and chain A
show surface, resi -28.228 and chain A
color green, resi -28.228 and chain A
set transparency, 0.2, resi -28.228 and chain A
select resi -26.170) and chain A
show surface, resi -26.170) and chain A
color green, resi -26.170) and chain A
set transparency, 0.2, resi -26.170) and chain A
zoom chain A
