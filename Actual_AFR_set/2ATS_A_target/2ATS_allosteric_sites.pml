# PyMOL script to highlight allosteric sites in 2ATS
fetch 2ATS
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 269 and chain A
show surface, resi 269 and chain A
color green, resi 269 and chain A
set transparency, 0.2, resi 269 and chain A
zoom chain A
