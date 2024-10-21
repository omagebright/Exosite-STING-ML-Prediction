# PyMOL script to highlight allosteric sites in 2LDB
fetch 2LDB
hide everything
show cartoon, chain D
color spectrum, chain D
select resi 171 and chain D
show surface, resi 171 and chain D
color green, resi 171 and chain D
set transparency, 0.2, resi 171 and chain D
select resi 183 and chain D
show surface, resi 183 and chain D
color green, resi 183 and chain D
set transparency, 0.2, resi 183 and chain D
select resi 184 and chain D
show surface, resi 184 and chain D
color green, resi 184 and chain D
set transparency, 0.2, resi 184 and chain D
select resi 186 and chain D
show surface, resi 186 and chain D
color green, resi 186 and chain D
set transparency, 0.2, resi 186 and chain D
select resi 187 and chain D
show surface, resi 187 and chain D
color green, resi 187 and chain D
set transparency, 0.2, resi 187 and chain D
select resi 188 and chain D
show surface, resi 188 and chain D
color green, resi 188 and chain D
set transparency, 0.2, resi 188 and chain D
select resi 207 and chain D
show surface, resi 207 and chain D
color green, resi 207 and chain D
set transparency, 0.2, resi 207 and chain D
select resi 208 and chain D
show surface, resi 208 and chain D
color green, resi 208 and chain D
set transparency, 0.2, resi 208 and chain D
select resi 269 and chain D
show surface, resi 269 and chain D
color green, resi 269 and chain D
set transparency, 0.2, resi 269 and chain D
zoom chain D
