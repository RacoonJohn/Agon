
data modify storage math:data board set value []


function _main_:games/global/preset/get_game


tag @a[predicate=_main_:search_game] add myPlayer



scoreboard players operation #bossbar.global0.value rMath = #bossbar.global0.date rMath
scoreboard players operation #bossbar.global0.value rMath -= gametime.current rMath
execute store result bossbar global0 value run scoreboard players operation #bossbar.global0.value rMath += #bossbar.global0.max rMath

execute if score #phase rMath matches 2 if score #bossbar.global0.value rMath matches ..0 run function _main_:games/vertigo/phase/3
execute if score #phase rMath matches 1 if score #bossbar.global0.value rMath matches ..0 run function _main_:games/vertigo/phase/2
execute if score #phase rMath matches 0 if score #bossbar.global0.value rMath matches ..0 run function _main_:games/vertigo/phase/1

execute as @a[tag=myPlayer,tag=!spectate] at @s run function _main_:games/vertigo/player/main

scoreboard players set #search teamID 1
execute if score #end rMath matches 0 if entity @a[predicate=_main_:search_team] unless entity @a[predicate=_main_:search_team,tag=!vertigo.complete] unless entity @e[predicate=_main_:search_team,predicate=_main_:search_game,tag=vertigo.rush] run function _main_:games/vertigo/can_win
scoreboard players set #search teamID 2
execute if score #end rMath matches 0 if entity @a[predicate=_main_:search_team] unless entity @a[predicate=_main_:search_team,tag=!vertigo.complete] unless entity @e[predicate=_main_:search_team,predicate=_main_:search_game,tag=vertigo.rush] run function _main_:games/vertigo/can_win
scoreboard players set #search teamID 3
execute if score #end rMath matches 0 if entity @a[predicate=_main_:search_team] unless entity @a[predicate=_main_:search_team,tag=!vertigo.complete] unless entity @e[predicate=_main_:search_team,predicate=_main_:search_game,tag=vertigo.rush] run function _main_:games/vertigo/can_win
scoreboard players set #search teamID 4
execute if score #end rMath matches 0 if entity @a[predicate=_main_:search_team] unless entity @a[predicate=_main_:search_team,tag=!vertigo.complete] unless entity @e[predicate=_main_:search_team,predicate=_main_:search_game,tag=vertigo.rush] run function _main_:games/vertigo/can_win



execute as @e[tag=vertigo.rush,scores={teamID=1..}] at @s run function _main_:games/vertigo/rush/tick


scoreboard players set #dx rMath 58
scoreboard players set #dy rMath 64
scoreboard players set #dz rMath 58
execute positioned 963 -64 995 run function _main_:games/global/warn_zone/main


tag @a remove myPlayer



function _main_:games/global/display/gametime

data modify storage math:data board append value ""

scoreboard players operation #limit rMath = #vertigoBo settings
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


