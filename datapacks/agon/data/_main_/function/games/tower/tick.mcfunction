
data modify storage math:data board set value []


function _main_:games/global/preset/get_game


tag @a[predicate=_main_:search_game] add myPlayer


execute as @a[tag=myPlayer] at @s run function _main_:games/tower/player/main
execute as @e[tag=towerGoal] at @s run function _main_:games/tower/goal/tick


scoreboard players set #dx rMath 58
scoreboard players set #dy rMath 64
scoreboard players set #dz rMath 58
execute positioned 963 -64 995 run function _main_:games/global/warn_zone/main


tag @a remove myPlayer



function _main_:games/global/display/gametime

data modify storage math:data board append value ""

scoreboard players operation #limit rMath = #towerBo settings
scoreboard players set #count rMath 0
scoreboard players operation #limit1 rMath = #r points
scoreboard players operation #limit2 rMath = #g points
scoreboard players operation #limit3 rMath = #b points
scoreboard players operation #limit4 rMath = #p points
data modify storage math:data str set value {rc:"🗡",gc:"🪓",bc:"🛡",pc:"🧪"}
function _main_:games/global/display/points/loop
data modify storage _rin_:intern display.temp set value [{nbt:"str.r",storage:"math:data",color:"r",font:"pvp:icons",interpret:true},{nbt:"str.r_",storage:"math:data",color:"rm",interpret:true}]
function _rin_:sys/style/change_color_list
execute if entity @a[scores={teamID=1}] run data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value [{nbt:"str.g",storage:"math:data",color:"g",font:"pvp:icons",interpret:true},{nbt:"str.g_",storage:"math:data",color:"gm",interpret:true}]
function _rin_:sys/style/change_color_list
execute if entity @a[scores={teamID=2}] run data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value [{nbt:"str.b",storage:"math:data",color:"b",font:"pvp:icons",interpret:true},{nbt:"str.b_",storage:"math:data",color:"bm",interpret:true}]
function _rin_:sys/style/change_color_list
execute if entity @a[scores={teamID=3}] run data modify storage math:data board append from storage _rin_:intern display.temp
data modify storage _rin_:intern display.temp set value [{nbt:"str.p",storage:"math:data",color:"p",font:"pvp:icons",interpret:true},{nbt:"str.p_",storage:"math:data",color:"pm",interpret:true}]
function _rin_:sys/style/change_color_list
execute if entity @a[scores={teamID=4}] run data modify storage math:data board append from storage _rin_:intern display.temp




function _main_:games/global/display/sidebar


