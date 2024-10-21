# PyMOL script to highlight allosteric sites in 1H9G
fetch 1H9G
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 52.436) and chain A
show surface, resi 52.436) and chain A
color green, resi 52.436) and chain A
set transparency, 0.2, resi 52.436) and chain A
zoom chain A
