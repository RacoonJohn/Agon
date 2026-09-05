
tag @s add _rin_sys_this

execute on origin run data modify entity @e[type=item,limit=1,tag=_rin_sys_this] Owner set from entity @s UUID
data modify entity @s PickupDelay set value 0s
execute on origin at @s run tp @e[type=item,limit=1,tag=_rin_sys_this] @s

tag @s remove _rin_sys_this
