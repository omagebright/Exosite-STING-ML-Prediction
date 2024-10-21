# PyMOL script to highlight allosteric sites in 3NWY
fetch 3NWY
hide everything
show cartoon, chain E
color spectrum, chain E
select resi 136 and chain E
show surface, resi 136 and chain E
color green, resi 136 and chain E
set transparency, 0.2, resi 136 and chain E
select resi 134 and chain E
show surface, resi 134 and chain E
color green, resi 134 and chain E
set transparency, 0.2, resi 134 and chain E
select resi 123 and chain E
show surface, resi 123 and chain E
color green, resi 123 and chain E
set transparency, 0.2, resi 123 and chain E
select resi 135 and chain E
show surface, resi 135 and chain E
color green, resi 135 and chain E
set transparency, 0.2, resi 135 and chain E
select resi 112 and chain E
show surface, resi 112 and chain E
color green, resi 112 and chain E
set transparency, 0.2, resi 112 and chain E
select resi 133 and chain E
show surface, resi 133 and chain E
color green, resi 133 and chain E
set transparency, 0.2, resi 133 and chain E
select resi 124 and chain E
show surface, resi 124 and chain E
color green, resi 124 and chain E
set transparency, 0.2, resi 124 and chain E
select resi 132 and chain E
show surface, resi 132 and chain E
color green, resi 132 and chain E
set transparency, 0.2, resi 132 and chain E
select resi 131 and chain E
show surface, resi 131 and chain E
color green, resi 131 and chain E
set transparency, 0.2, resi 131 and chain E
zoom chain E
