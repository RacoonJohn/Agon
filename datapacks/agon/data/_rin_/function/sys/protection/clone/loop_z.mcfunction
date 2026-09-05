


scoreboard players set #count _rin_protection_origin_Y 0
function _rin_:sys/protection/clone/loop_y



scoreboard players add #count _rin_protection_origin_Z 8
execute if score #count _rin_protection_origin_Z < #temp _rin_protection_origin_Z positioned ~ ~ ~8 run function _rin_:sys/protection/clone/loop_z

