# PyMOL script to highlight allosteric sites in 2VD3
fetch 2VD3
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 29.131) and chain A
show surface, resi 29.131) and chain A
color green, resi 29.131) and chain A
set transparency, 0.2, resi 29.131) and chain A
zoom chain A
