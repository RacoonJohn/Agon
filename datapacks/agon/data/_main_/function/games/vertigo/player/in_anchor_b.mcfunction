
data modify storage math:data in.pos set from entity @n[type=marker,tag=vertigo.b,tag=!spawn,tag=_rin_sys_cloned] Pos
data modify storage math:data in.radius set value 4
data modify storage math:data in.height set value 2

execute if predicate _main_:inshape/cylinder run return 1
