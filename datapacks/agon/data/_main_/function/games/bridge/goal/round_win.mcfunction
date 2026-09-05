
scoreboard players set #end rMath 1



function _main_:games/global/preset/get_game
scoreboard players operation #search teamID = @s teamID
tag @a[predicate=_main_:search_game] add myPlayer



function _main_:games/global/game_count/round
schedule function _main_:games/global/stats/append_all 2t append

execute if score #search teamID matches 1 run data modify storage main str set value {text:"Blue",color:"blue"}
execute if score #search teamID matches 3 run data modify storage main str set value {text:"Red",color:"red"}



execute if score #search teamID matches 1 run scoreboard players add #b points 1
execute if score #search teamID matches 3 run scoreboard players add #r points 1



scoreboard players operation #search teamID = @s teamID

function _main_:games/global/gametime/pause
schedule function _main_:games/global/gametime/resume 101t append


scoreboard players operation #limit rMath = #bridgeBo settings
scoreboard players operation #limit rMath /= #2 rMath
scoreboard players add #limit rMath 1

execute if score #b points >= #limit rMath run return run function _main_:games/bridge/goal/win
execute if score #r points >= #limit rMath run return run function _main_:games/bridge/goal/win



title @a[tag=myPlayer] subtitle [{text:"the round",color:"gold"}]
title @a[tag=myPlayer] title [{nbt:"str",storage:"main",interpret:true},{text:" won",color:"gold"}]



scoreboard players operation #search teamID = @s teamID
execute as @a[tag=myPlayer,predicate=!_main_:search_team] at @s run function _main_:games/global/fx/win
execute as @a[tag=myPlayer,predicate=_main_:search_team] at @s run function _main_:games/global/fx/loose




schedule function _main_:games/bridge/new_round 101t append

