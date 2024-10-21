# PyMOL script to highlight allosteric sites in 1F2U
fetch 1F2U
hide everything
show cartoon, chain D
color spectrum, chain D
# Highlight allosteric residues
select resi 794 and chain D
show surface, resi 794 and chain D
color green, resi 794 and chain D
set transparency, 0.19999999999999996, resi 794 and chain D
select resi 795 and chain D
show surface, resi 795 and chain D
color green, resi 795 and chain D
set transparency, 0.19999999999999996, resi 795 and chain D
select resi 794 and chain D
show surface, resi 794 and chain D
color green, resi 794 and chain D
set transparency, 0.19999999999999996, resi 794 and chain D
select resi 795 and chain D
show surface, resi 795 and chain D
color green, resi 795 and chain D
set transparency, 0.19999999999999996, resi 795 and chain D
zoom chain D
