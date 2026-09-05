
scoreboard players operation #temp _rin_protection_origin_X = @s _rin_protection_origin_X
scoreboard players operation #temp _rin_protection_origin_Y = @s _rin_protection_origin_Y
scoreboard players operation #temp _rin_protection_origin_Z = @s _rin_protection_origin_Z
execute store result storage _rin_:intern macro.x int 1 run scoreboard players get #temp _rin_protection_origin_X
execute store result storage _rin_:intern macro.y int 1 run scoreboard players get #temp _rin_protection_origin_Y
execute store result storage _rin_:intern macro.z int 1 run scoreboard players get #temp _rin_protection_origin_Z


scoreboard players set #size _rin_global 7
execute if score @s _rin_protection_size matches 0.. run scoreboard players operation #size _rin_global = @s _rin_protection_size
execute if entity @s[tag=_rin_sys_size9] run scoreboard players set #size _rin_global 8
execute if entity @s[tag=_rin_sys_size5] run scoreboard players set #size _rin_global 4
execute if entity @s[tag=_rin_sys_size2] run scoreboard players set #size _rin_global 1

scoreboard players operation #temp _rin_protection_origin_X += #size _rin_global
scoreboard players operation #temp _rin_protection_origin_Y += #size _rin_global
scoreboard players operation #temp _rin_protection_origin_Z += #size _rin_global

execute store result storage _rin_:intern macro.x2 int 1 run scoreboard players get #temp _rin_protection_origin_X
execute store result storage _rin_:intern macro.y2 int 1 run scoreboard players get #temp _rin_protection_origin_Y
execute store result storage _rin_:intern macro.z2 int 1 run scoreboard players get #temp _rin_protection_origin_Z

tag @s add _rin_global_this

function _rin_:sys/protection/clone_branch

tag @s remove _rin_global_this

