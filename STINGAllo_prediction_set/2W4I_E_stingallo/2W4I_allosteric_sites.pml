# PyMOL script to highlight allosteric sites in 2W4I
fetch 2W4I
hide everything
show cartoon, chain E
color spectrum, chain E
# Highlight allosteric residues
select resi 150 and chain E
show surface, resi 150 and chain E
color green, resi 150 and chain E
set transparency, 0.19999999999999996, resi 150 and chain E
select resi 151 and chain E
show surface, resi 151 and chain E
color green, resi 151 and chain E
set transparency, 0.19999999999999996, resi 151 and chain E
select resi 144 and chain E
show surface, resi 144 and chain E
color green, resi 144 and chain E
set transparency, 0.19999999999999996, resi 144 and chain E
select resi 38 and chain E
show surface, resi 38 and chain E
color green, resi 38 and chain E
set transparency, 0.19999999999999996, resi 38 and chain E
select resi 143 and chain E
show surface, resi 143 and chain E
color green, resi 143 and chain E
set transparency, 0.19999999999999996, resi 143 and chain E
select resi 41 and chain E
show surface, resi 41 and chain E
color green, resi 41 and chain E
set transparency, 0.19999999999999996, resi 41 and chain E
select resi 37 and chain E
show surface, resi 37 and chain E
color green, resi 37 and chain E
set transparency, 0.19999999999999996, resi 37 and chain E
zoom chain E
