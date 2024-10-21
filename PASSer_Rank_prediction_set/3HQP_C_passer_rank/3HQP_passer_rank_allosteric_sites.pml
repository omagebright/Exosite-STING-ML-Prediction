# PyMOL script to highlight allosteric sites in 3HQP
fetch 3HQP
hide everything
show cartoon, chain C
color spectrum, chain C
select resi -17.049 and chain C
show surface, resi -17.049 and chain C
color green, resi -17.049 and chain C
set transparency, 0.2, resi -17.049 and chain C
select resi -17.280) and chain C
show surface, resi -17.280) and chain C
color green, resi -17.280) and chain C
set transparency, 0.2, resi -17.280) and chain C
zoom chain C
