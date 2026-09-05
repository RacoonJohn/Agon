
scoreboard players operation #search teamID = @s teamID

execute unless entity @a[predicate=!_main_:search_team,tag=!spectate] run function _main_:games/tower/win_round
