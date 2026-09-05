
scoreboard players operation #search teamID = @s teamID

execute if score #end rMath matches 0 unless entity @a[tag=!spectate,predicate=!_main_:search_team] run function _main_:games/fbg/win_round

