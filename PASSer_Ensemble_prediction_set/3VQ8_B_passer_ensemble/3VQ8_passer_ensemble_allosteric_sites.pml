# PyMOL script to highlight allosteric sites in 3VQ8
fetch 3VQ8
hide everything
show cartoon, chain B
color spectrum, chain B
select resi 182 and chain B
show surface, resi 182 and chain B
color green, resi 182 and chain B
set transparency, 0.2, resi 182 and chain B
select resi 173 and chain B
show surface, resi 173 and chain B
color green, resi 173 and chain B
set transparency, 0.2, resi 173 and chain B
select resi 181 and chain B
show surface, resi 181 and chain B
color green, resi 181 and chain B
set transparency, 0.2, resi 181 and chain B
select resi 178 and chain B
show surface, resi 178 and chain B
color green, resi 178 and chain B
set transparency, 0.2, resi 178 and chain B
select resi 174 and chain B
show surface, resi 174 and chain B
color green, resi 174 and chain B
set transparency, 0.2, resi 174 and chain B
select resi 177 and chain B
show surface, resi 177 and chain B
color green, resi 177 and chain B
set transparency, 0.2, resi 177 and chain B
zoom chain B
