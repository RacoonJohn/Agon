

data modify entity @s Pos set from storage _rin_:intern macro.data.Pos

tag @s remove _rin_sys_this

function _main_:games/global/init_cloned


scoreboard players operation @s _rin_protection_origin_X = #temp3 _rin_protection_origin_X
scoreboard players operation @s _rin_protection_origin_Y = #temp3 _rin_protection_origin_Y
scoreboard players operation @s _rin_protection_origin_Z = #temp3 _rin_protection_origin_Z
