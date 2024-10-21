# PyMOL script to highlight allosteric sites in 4KZT
fetch 4KZT
hide everything
show cartoon, chain Y
color spectrum, chain Y
# Highlight allosteric residues
select resi 289 and chain Y
show surface, resi 289 and chain Y
color green, resi 289 and chain Y
set transparency, 0.19999999999999996, resi 289 and chain Y
select resi 277 and chain Y
show surface, resi 277 and chain Y
color green, resi 277 and chain Y
set transparency, 0.19999999999999996, resi 277 and chain Y
select resi 215 and chain Y
show surface, resi 215 and chain Y
color green, resi 215 and chain Y
set transparency, 0.19999999999999996, resi 215 and chain Y
select resi 285 and chain Y
show surface, resi 285 and chain Y
color green, resi 285 and chain Y
set transparency, 0.19999999999999996, resi 285 and chain Y
select resi 281 and chain Y
show surface, resi 281 and chain Y
color green, resi 281 and chain Y
set transparency, 0.19999999999999996, resi 281 and chain Y
select resi 206 and chain Y
show surface, resi 206 and chain Y
color green, resi 206 and chain Y
set transparency, 0.19999999999999996, resi 206 and chain Y
select resi 226 and chain Y
show surface, resi 226 and chain Y
color green, resi 226 and chain Y
set transparency, 0.19999999999999996, resi 226 and chain Y
select resi 265 and chain Y
show surface, resi 265 and chain Y
color green, resi 265 and chain Y
set transparency, 0.19999999999999996, resi 265 and chain Y
select resi 28 and chain Y
show surface, resi 28 and chain Y
color green, resi 28 and chain Y
set transparency, 0.19999999999999996, resi 28 and chain Y
zoom chain Y
