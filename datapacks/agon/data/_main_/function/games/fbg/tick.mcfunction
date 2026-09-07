
data modify storage math:data board set value []


function _main_:games/global/preset/get_game

tag @a[predicate=_main_:search_game] add myPlayer

execute as @a[tag=myPlayer] at @s run function _main_:games/fbg/player/main

scoreboard players set #dx rMath 142
scoreboard players set #dy rMath 42
scoreboard players set #dz rMath 142
execute positioned 938 -64 960 run function _main_:games/global/warn_zone/main

execute positioned 968 -64 1000 as @e[type=item,dx=195,dz=65,dy=100] if items entity @s container.0 #wool unless items entity @s container.0 *[custom_data~{"_rin_":{"cant_drop":true}}] run kill @s




function _main_:games/global/display/gametime

data modify storage math:data board append value ""


scoreboard players operation #limit rMath = #fbgBo settings
scoreboard players set #count rMath 0
scoreboard players operation #limit1 rMath = #r points
scoreboard players operation #limit2 rMath = #g points
scoreboard players operation #limit3 rMath = #b points
scoreboard players operation #limit4 rMath = #p points
data modify storage math:data str set value {rc:"🗡",gc:"🪓",bc:"🛡",pc:"🧪"}
function _main_:games/global/display/points/loop
data modify storage _rin_:intern display.temp set value [{nbt:"str.r",storage:"math:data",interpret:true,color:"r",font:"pvp:icons"},{nbt:"str.r_",storage:"math:data",interpret:true,color:"rm"}]
function _rin_:sys/style/change_color_list
execute if entity @a[scores={teamID=1}] run data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value [{nbt:"str.g",storage:"math:data",interpret:true,color:"g",font:"pvp:icons"},{nbt:"str.g_",storage:"math:data",interpret:true,color:"gm"}]
function _rin_:sys/style/change_color_list
execute if entity @a[scores={teamID=2}] run data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value [{nbt:"str.b",storage:"math:data",interpret:true,color:"b",font:"pvp:icons"},{nbt:"str.b_",storage:"math:data",interpret:true,color:"bm"}]
function _rin_:sys/style/change_color_list
execute if entity @a[scores={teamID=3}] run data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value [{nbt:"str.p",storage:"math:data",interpret:true,color:"p",font:"pvp:icons"},{nbt:"str.p_",storage:"math:data",interpret:true,color:"pm"}]
function _rin_:sys/style/change_color_list
execute if entity @a[scores={teamID=4}] run data modify storage math:data board append from storage _rin_:intern display.temp


function _main_:games/global/display/sidebar


