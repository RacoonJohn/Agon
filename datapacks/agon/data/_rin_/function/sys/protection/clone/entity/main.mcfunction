tag @s add _rin_sys_cloned_now
tag @s add _rin_sys_this
execute summon block_display run function _rin_:sys/protection/clone/entity/get_id
tp @s ~ ~ ~
tag @s remove _rin_sys_this

data modify storage _rin_:intern macro.data set from entity @s

execute store result score #X4 _rin_global run data get storage _rin_:intern macro.data.Pos[0] 1000
execute store result score #Y4 _rin_global run data get storage _rin_:intern macro.data.Pos[1] 1000
execute store result score #Z4 _rin_global run data get storage _rin_:intern macro.data.Pos[2] 1000


scoreboard players operation #temp3 _rin_protection_origin_X = #X4 _rin_global
scoreboard players operation #temp3 _rin_protection_origin_Y = #Y4 _rin_global
scoreboard players operation #temp3 _rin_protection_origin_Z = #Z4 _rin_global
scoreboard players operation #temp3 _rin_protection_origin_X /= #1000 _rin_global
scoreboard players operation #temp3 _rin_protection_origin_Y /= #1000 _rin_global
scoreboard players operation #temp3 _rin_protection_origin_Z /= #1000 _rin_global


scoreboard players operation #X4 _rin_global -= #temp2 _rin_protection_origin_X
scoreboard players operation #Y4 _rin_global -= #temp2 _rin_protection_origin_Y
scoreboard players operation #Z4 _rin_global -= #temp2 _rin_protection_origin_Z

scoreboard players operation #X4 _rin_global += #X3 _rin_global
scoreboard players operation #Y4 _rin_global += #Y3 _rin_global
scoreboard players operation #Z4 _rin_global += #Z3 _rin_global

execute store result storage _rin_:intern macro.data.Pos[0] double 0.001 run scoreboard players get #X4 _rin_global
execute store result storage _rin_:intern macro.data.Pos[1] double 0.001 run scoreboard players get #Y4 _rin_global
execute store result storage _rin_:intern macro.data.Pos[2] double 0.001 run scoreboard players get #Z4 _rin_global

data remove storage _rin_:intern macro.data.UUID

data modify storage _rin_:intern macro.data.Tags append value "_rin_sys_this"
data modify storage _rin_:intern macro.data.Tags append value "_rin_sys_cloned"

function _rin_:sys/protection/clone/entity/summon with storage _rin_:intern macro

execute as @e[tag=_rin_sys_this,distance=..1] run function _rin_:sys/protection/clone/entity/final

