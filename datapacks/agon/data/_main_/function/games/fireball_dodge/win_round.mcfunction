

schedule function _main_:games/global/stats/append_all 2t append

scoreboard players set #end rMath 1
function _main_:games/global/gametime/pause
function _main_:games/global/preset/get_game
tag @a[predicate=_main_:search_game] add myPlayer

execute if score #search teamID matches 3 run scoreboard players add #r points 1
execute if score #search teamID matches 1 run scoreboard players add #b points 1

scoreboard players operation #limit rMath = #fbdBo settings
scoreboard players operation #limit rMath /= #2 rMath
scoreboard players add #limit rMath 1

execute if score #b points >= #limit rMath run return run function _main_:games/fireball_dodge/win
execute if score #r points >= #limit rMath run return run function _main_:games/fireball_dodge/win



execute if score #search teamID matches 1 run data modify storage main str set value {text:"Blue",color:"blue"}
execute if score #search teamID matches 3 run data modify storage main str set value {text:"Red",color:"red"}


title @a[tag=myPlayer] subtitle [{text:"the round",color:"gold"}]
title @a[tag=myPlayer] title [{nbt:"str",storage:"main",interpret:true},{text:" won",color:"gold"}]


execute as @a[tag=myPlayer,predicate=!_main_:search_team] run function _main_:games/global/fx/win
execute as @a[tag=myPlayer,predicate=_main_:search_team] run function _main_:games/global/fx/loose

execute as @a[tag=myPlayer] run attribute @s attack_damage modifier add cancel -1 add_multiplied_total

schedule function _main_:games/global/gametime/resume 121t append
schedule function _main_:games/fireball_dodge/new_round 20



tag @a[tag=myPlayer] remove myPlayer
