# PyMOL script to highlight allosteric sites in 2ATS
fetch 2ATS
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 161 and chain A
show surface, resi 161 and chain A
color green, resi 161 and chain A
set transparency, 0.19999999999999996, resi 161 and chain A
select resi 161 and chain A
show surface, resi 161 and chain A
color green, resi 161 and chain A
set transparency, 0.19999999999999996, resi 161 and chain A
zoom chain A
