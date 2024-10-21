# PyMOL script to highlight allosteric sites in 2ZFZ
fetch 2ZFZ
hide everything
show cartoon, chain F
color spectrum, chain F
# Highlight allosteric residues
select resi 128 and chain F
show surface, resi 128 and chain F
color green, resi 128 and chain F
set transparency, 0.19999999999999996, resi 128 and chain F
select resi 144 and chain F
show surface, resi 144 and chain F
color green, resi 144 and chain F
set transparency, 0.19999999999999996, resi 144 and chain F
select resi 132 and chain F
show surface, resi 132 and chain F
color green, resi 132 and chain F
set transparency, 0.19999999999999996, resi 132 and chain F
select resi 146 and chain F
show surface, resi 146 and chain F
color green, resi 146 and chain F
set transparency, 0.19999999999999996, resi 146 and chain F
select resi 147 and chain F
show surface, resi 147 and chain F
color green, resi 147 and chain F
set transparency, 0.19999999999999996, resi 147 and chain F
select resi 122 and chain F
show surface, resi 122 and chain F
color green, resi 122 and chain F
set transparency, 0.19999999999999996, resi 122 and chain F
select resi 145 and chain F
show surface, resi 145 and chain F
color green, resi 145 and chain F
set transparency, 0.19999999999999996, resi 145 and chain F
select resi 125 and chain F
show surface, resi 125 and chain F
color green, resi 125 and chain F
set transparency, 0.19999999999999996, resi 125 and chain F
select resi 143 and chain F
show surface, resi 143 and chain F
color green, resi 143 and chain F
set transparency, 0.19999999999999996, resi 143 and chain F
select resi 121 and chain F
show surface, resi 121 and chain F
color green, resi 121 and chain F
set transparency, 0.19999999999999996, resi 121 and chain F
select resi 129 and chain F
show surface, resi 129 and chain F
color green, resi 129 and chain F
set transparency, 0.19999999999999996, resi 129 and chain F
select resi 142 and chain F
show surface, resi 142 and chain F
color green, resi 142 and chain F
set transparency, 0.19999999999999996, resi 142 and chain F
select resi 148 and chain F
show surface, resi 148 and chain F
color green, resi 148 and chain F
set transparency, 0.19999999999999996, resi 148 and chain F
zoom chain F
