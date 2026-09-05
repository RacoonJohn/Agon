
scoreboard players operation #search teamID = @s teamID

execute if score #search teamID matches 1 run scoreboard players operation #r points -= #temp rMath
execute if score #search teamID matches 3 run scoreboard players operation #b points -= #temp rMath


execute if score #search teamID matches 1 run scoreboard players operation #current points = #r points
execute if score #search teamID matches 3 run scoreboard players operation #current points = #b points

execute if score #current points matches ..0 run function _main_:games/block_fight/win

execute if score #current points < block_fightPoint settings run scoreboard players add #current points 1
scoreboard players operation #current points *= #20 rMath
scoreboard players operation #current points /= #block_fightPoint settings
execute store result storage math:data macro.x float 0.05 run scoreboard players get #current points

execute as @a[predicate=_main_:search_team] run function _main_:games/block_fight/player/health_macro with storage math:data macro
