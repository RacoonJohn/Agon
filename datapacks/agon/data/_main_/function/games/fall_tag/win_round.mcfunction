function _main_:games/global/preset/get_game
function _main_:games/global/gametime/pause



schedule function _main_:games/global/stats/append_all 2t append

scoreboard players set #end rMath 1

scoreboard players set #search gameID 3
tag @a[predicate=_main_:search_game] add myPlayer


execute if score #search teamID matches 1 run data modify storage _rin_:intern display.temp set value {text:"Blue",color:"b"}
execute if score #search teamID matches 3 run data modify storage _rin_:intern display.temp set value {text:"Red",color:"r"}
function _rin_:sys/style/change_color

execute if score #search teamID matches 3 run scoreboard players add #r points 1
execute if score #search teamID matches 1 run scoreboard players add #b points 1

scoreboard players operation #limit rMath = #fall_tagBo settings

execute if score #b points >= #limit rMath run return run function _main_:games/fall_tag/win
execute if score #r points >= #limit rMath run return run function _main_:games/fall_tag/win

title @a[tag=myPlayer] subtitle [{text:"the round",color:"gold"}]
title @a[tag=myPlayer] title [{nbt:"display.temp",storage:"_rin_:intern",interpret:true},{text:" won",color:"gold"}]


execute as @a[tag=myPlayer,predicate=!_main_:search_team] run function _main_:games/global/fx/win
execute as @a[tag=myPlayer,predicate=_main_:search_team] run function _main_:games/global/fx/loose

execute as @a[tag=myPlayer] run attribute @s attack_damage modifier add cancel -1 add_multiplied_total

schedule function _main_:games/global/gametime/reset 21t append
schedule function _main_:games/global/gametime/pause 21t append
schedule function _main_:games/fall_tag/new_round 21
schedule function _main_:games/global/gametime/resume 121t append




tag @a[tag=myPlayer] remove myPlayer
