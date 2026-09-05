
#warn-off
data modify storage _rin_:intern pos set from entity @e[tag=_rin_global_this,type=marker,limit=1,sort=nearest] Pos
execute store result score #temp2 _rin_protection_origin_X run data get storage _rin_:intern pos[0]
execute store result score #temp2 _rin_protection_origin_Y run data get storage _rin_:intern pos[1]
execute store result score #temp2 _rin_protection_origin_Z run data get storage _rin_:intern pos[2]

#warn-off
execute if entity @e[tag=_rin_global_this,tag=_rin_sys_size9,type=marker,limit=1,sort=nearest] run return run function _rin_:sys/protection/item
#warn-off
function _rin_:sys/protection/item
