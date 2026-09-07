
data modify storage math:data board set value []


function _main_:games/global/preset/get_game

tag @a[predicate=_main_:search_game] add myPlayer


execute as @a[tag=myPlayer] at @s run function _main_:games/bridge/player/main

execute as @e[type=marker,tag=goal,predicate=_main_:search_game] at @s run function _main_:games/bridge/goal/main




scoreboard players set #dx rMath 138
scoreboard players set #dy rMath 31
scoreboard players set #dz rMath 42
execute positioned 985 -64 1011 run function _main_:games/global/warn_zone/main


execute positioned 968 -64 1000 as @e[type=item,dx=195,dz=65,dy=100] if items entity @s container.0 #_main_:concrete unless items entity @s container.0 *[custom_data~{"_rin_":{"cant_drop":true}}] run kill @s



tag @a remove myPlayer



function _main_:games/global/display/gametime

data modify storage math:data board append value ""

scoreboard players operation #limit rMath = #bridgeBo settings
scoreboard players set #count rMath 0
scoreboard players operation #limit1 rMath = #r points
scoreboard players operation #limit3 rMath = #b points
data modify storage math:data str set value {rc:"🗡",gc:"🪓",bc:"🛡",pc:"🧪"}
function _main_:games/global/display/points/loop
data modify storage _rin_:intern display.temp set value ["",{nbt:"str.r",storage:"math:data",interpret:true,color:"r",font:"pvp:icons"},{nbt:"str.r_",storage:"math:data",interpret:true,color:"rm",font:"pvp:icons"}]
function _rin_:sys/style/change_color_list
data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value ["",{nbt:"str.b",storage:"math:data",interpret:true,color:"b",font:"pvp:icons"},{nbt:"str.b_",storage:"math:data",interpret:true,color:"bm",font:"pvp:icons"}]
function _rin_:sys/style/change_color_list
data modify storage math:data board append from storage _rin_:intern display.temp




function _main_:games/global/display/sidebar


