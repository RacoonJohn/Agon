


scoreboard players set #count _rin_protection_origin_Z 0
function _rin_:sys/protection/clone/loop_z


scoreboard players add #count _rin_protection_origin_X 8
execute if score #count _rin_protection_origin_X < #temp _rin_protection_origin_X positioned ~8 ~ ~ run function _rin_:sys/protection/clone/loop_x

