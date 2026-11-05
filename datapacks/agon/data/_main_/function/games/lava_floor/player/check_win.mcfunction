
scoreboard players operation #search teamID = @s teamID

execute if score #end rMath matches 0 unless entity @a[predicate=!_main_:search_team,tag=!spectate] run function _main_:games/lava_floor/win_round
