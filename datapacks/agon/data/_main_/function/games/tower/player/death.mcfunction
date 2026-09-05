
scoreboard players reset @s death
function _main_:games/global/player/spectate


scoreboard players operation #search teamID = @s teamID


execute if score #end rMath matches 1 run return fail


execute unless entity @a[predicate=!_main_:search_team,tag=!spectate] run return run function _main_:games/pvpkit/win_round

execute as @a[predicate=!_main_:search_team,tag=!spectate] at @s run function _main_:games/pvpkit/player/check_win



