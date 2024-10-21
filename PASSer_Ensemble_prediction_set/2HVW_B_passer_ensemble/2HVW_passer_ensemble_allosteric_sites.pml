# PyMOL script to highlight allosteric sites in 2HVW
fetch 2HVW
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 14.272) and chain B
show surface, resi 14.272) and chain B
color green, resi 14.272) and chain B
set transparency, 0.2, resi 14.272) and chain B
zoom chain B
