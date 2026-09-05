
scoreboard players operation #temp2 _rin_protection_origin_X = #X0 _rin_global
scoreboard players operation #temp2 _rin_protection_origin_Y = #Y0 _rin_global
scoreboard players operation #temp2 _rin_protection_origin_Z = #Z0 _rin_global
scoreboard players operation #temp2 _rin_protection_origin_X += #count _rin_protection_origin_X
scoreboard players operation #temp2 _rin_protection_origin_Y += #count _rin_protection_origin_Y
scoreboard players operation #temp2 _rin_protection_origin_Z += #count _rin_protection_origin_Z
scoreboard players operation @s _rin_protection_origin_X = #temp2 _rin_protection_origin_X
scoreboard players operation @s _rin_protection_origin_Y = #temp2 _rin_protection_origin_Y
scoreboard players operation @s _rin_protection_origin_Z = #temp2 _rin_protection_origin_Z


scoreboard players operation #X3 _rin_global = #X2 _rin_global
scoreboard players operation #Y3 _rin_global = #Y2 _rin_global
scoreboard players operation #Z3 _rin_global = #Z2 _rin_global
scoreboard players operation #X3 _rin_global += #count _rin_protection_origin_X
scoreboard players operation #Y3 _rin_global += #count _rin_protection_origin_Y
scoreboard players operation #Z3 _rin_global += #count _rin_protection_origin_Z

execute store result storage _rin_:intern pos[0] int 1 run scoreboard players get #X3 _rin_global
execute store result storage _rin_:intern pos[1] int 1 run scoreboard players get #Y3 _rin_global
execute store result storage _rin_:intern pos[2] int 1 run scoreboard players get #Z3 _rin_global
data modify entity @s Pos set from storage _rin_:intern pos


data modify entity @s data.name set value "ċ"

tag @s add _rin_sys_protection
tag @s add _rin_sys_ignoreClone

execute if score #canPlace _rin_global matches 0 run tag @s add _rin_sys_force

scoreboard players operation #X3 _rin_global *= #1000 _rin_global
scoreboard players operation #Y3 _rin_global *= #1000 _rin_global
scoreboard players operation #Z3 _rin_global *= #1000 _rin_global
scoreboard players operation #temp2 _rin_protection_origin_X *= #1000 _rin_global
scoreboard players operation #temp2 _rin_protection_origin_Y *= #1000 _rin_global
scoreboard players operation #temp2 _rin_protection_origin_Z *= #1000 _rin_global

execute if score #ignoreEntities _rin_global matches 0 positioned ~-0.1 ~-0.1 ~-0.1 as @e[dx=7.2,dy=7.2,dz=7.2,tag=!_rin_sys_ignoreClone,tag=!_rin_sys_cloned,tag=!_rin_sys_cloned_now,type=!player] at @s run function _rin_:sys/protection/clone/entity/main


#scoreboard players operation #X3 _rin_global /= #1000 _rin_global
#scoreboard players operation #Y3 _rin_global /= #1000 _rin_global
#scoreboard players operation #Z3 _rin_global /= #1000 _rin_global
#scoreboard players operation #temp2 _rin_protection_origin_X /= #1000 _rin_global
#scoreboard players operation #temp2 _rin_protection_origin_Y /= #1000 _rin_global
#scoreboard players operation #temp2 _rin_protection_origin_Z /= #1000 _rin_global

