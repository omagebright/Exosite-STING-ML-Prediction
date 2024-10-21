# PyMOL script to highlight allosteric sites in 2IEG
fetch 2IEG
hide everything
show cartoon, chain A
color spectrum, chain A
select resi 64 and chain A
show surface, resi 64 and chain A
color green, resi 64 and chain A
set transparency, 0.2, resi 64 and chain A
select resi 191 and chain A
show surface, resi 191 and chain A
color green, resi 191 and chain A
set transparency, 0.2, resi 191 and chain A
select resi 63 and chain A
show surface, resi 63 and chain A
color green, resi 63 and chain A
set transparency, 0.2, resi 63 and chain A
select resi 189 and chain A
show surface, resi 189 and chain A
color green, resi 189 and chain A
set transparency, 0.2, resi 189 and chain A
select resi 190 and chain A
show surface, resi 190 and chain A
color green, resi 190 and chain A
set transparency, 0.2, resi 190 and chain A
select resi 192 and chain A
show surface, resi 192 and chain A
color green, resi 192 and chain A
set transparency, 0.2, resi 192 and chain A
select resi 229 and chain A
show surface, resi 229 and chain A
color green, resi 229 and chain A
set transparency, 0.2, resi 229 and chain A
select resi 67 and chain A
show surface, resi 67 and chain A
color green, resi 67 and chain A
set transparency, 0.2, resi 67 and chain A
select resi 188 and chain A
show surface, resi 188 and chain A
color green, resi 188 and chain A
set transparency, 0.2, resi 188 and chain A
select resi 60 and chain A
show surface, resi 60 and chain A
color green, resi 60 and chain A
set transparency, 0.2, resi 60 and chain A
zoom chain A
