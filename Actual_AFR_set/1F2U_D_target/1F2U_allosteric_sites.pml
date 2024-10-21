# PyMOL script to highlight allosteric sites in 1F2U
fetch 1F2U
hide everything
show cartoon, chain D
color spectrum, chain D
select resi 763 and chain D
show surface, resi 763 and chain D
color green, resi 763 and chain D
set transparency, 0.2, resi 763 and chain D
select resi 764 and chain D
show surface, resi 764 and chain D
color green, resi 764 and chain D
set transparency, 0.2, resi 764 and chain D
select resi 782 and chain D
show surface, resi 782 and chain D
color green, resi 782 and chain D
set transparency, 0.2, resi 782 and chain D
select resi 791 and chain D
show surface, resi 791 and chain D
color green, resi 791 and chain D
set transparency, 0.2, resi 791 and chain D
select resi 793 and chain D
show surface, resi 793 and chain D
color green, resi 793 and chain D
set transparency, 0.2, resi 793 and chain D
select resi 795 and chain D
show surface, resi 795 and chain D
color green, resi 795 and chain D
set transparency, 0.2, resi 795 and chain D
select resi 796 and chain D
show surface, resi 796 and chain D
color green, resi 796 and chain D
set transparency, 0.2, resi 796 and chain D
zoom chain D
