
scoreboard players set #end rMath 1
function _main_:games/global/preset/get_game
tag @a[predicate=_main_:search_game] add myPlayer


schedule function _main_:games/global/stats/append_all 2t append

execute if score #search teamID matches 1 run scoreboard players add #r points 1
execute if score #search teamID matches 2 run scoreboard players add #g points 1
execute if score #search teamID matches 3 run scoreboard players add #b points 1
execute if score #search teamID matches 4 run scoreboard players add #p points 1

scoreboard players operation #limit rMath = #fbgBo settings
scoreboard players operation #limit rMath /= #4 rMath
scoreboard players add #limit rMath 1

execute if score #r points >= #limit rMath run return run function _main_:games/fbg/win
execute if score #b points >= #limit rMath run return run function _main_:games/fbg/win
execute if score #g points >= #limit rMath run return run function _main_:games/fbg/win
execute if score #p points >= #limit rMath run return run function _main_:games/fbg/win



execute if score #search teamID matches 1 run data modify storage main str set value {text:"Red",color:"red"}
execute if score #search teamID matches 2 run data modify storage main str set value {text:"Green",color:"green"}
execute if score #search teamID matches 3 run data modify storage main str set value {text:"Blue",color:"blue"}
execute if score #search teamID matches 4 run data modify storage main str set value {text:"Pink",color:"light_purple"}



title @a[tag=myPlayer] subtitle [{text:"the round",color:"gold"}]
title @a[tag=myPlayer] title [{nbt:"str",storage:"main",interpret:true},{text:" won",color:"gold"}]


execute as @a[tag=myPlayer,predicate=!_main_:search_team] run function _main_:games/global/fx/win
execute as @a[tag=myPlayer,predicate=_main_:search_team] run function _main_:games/global/fx/loose

execute as @a[tag=myPlayer] run attribute @s attack_damage modifier add cancel -1 add_multiplied_total

function _main_:games/global/gametime/pause
schedule function _main_:games/global/gametime/resume 121t append

schedule function _main_:games/fbg/new_round 20



tag @a[tag=myPlayer] remove myPlayer
