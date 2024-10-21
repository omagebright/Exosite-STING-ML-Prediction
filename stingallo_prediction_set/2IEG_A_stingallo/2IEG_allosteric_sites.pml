# PyMOL script to highlight allosteric sites in 2IEG
fetch 2IEG
hide everything
show cartoon, chain A
color spectrum, chain A
# Highlight allosteric residues
select resi 60 and chain A
show surface, resi 60 and chain A
color green, resi 60 and chain A
set transparency, 0.19999999999999996, resi 60 and chain A
select resi 486 and chain A
show surface, resi 486 and chain A
color green, resi 486 and chain A
set transparency, 0.19999999999999996, resi 486 and chain A
select resi 574 and chain A
show surface, resi 574 and chain A
color green, resi 574 and chain A
set transparency, 0.19999999999999996, resi 574 and chain A
select resi 229 and chain A
show surface, resi 229 and chain A
color green, resi 229 and chain A
set transparency, 0.19999999999999996, resi 229 and chain A
select resi 67 and chain A
show surface, resi 67 and chain A
color green, resi 67 and chain A
set transparency, 0.19999999999999996, resi 67 and chain A
select resi 189 and chain A
show surface, resi 189 and chain A
color green, resi 189 and chain A
set transparency, 0.19999999999999996, resi 189 and chain A
select resi 40 and chain A
show surface, resi 40 and chain A
color green, resi 40 and chain A
set transparency, 0.19999999999999996, resi 40 and chain A
select resi 64 and chain A
show surface, resi 64 and chain A
color green, resi 64 and chain A
set transparency, 0.19999999999999996, resi 64 and chain A
zoom chain A
