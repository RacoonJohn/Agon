
execute if data storage math:data preset_selected.inventory{united:1b} run return run function _main_:games/global/player/inventory/get_united

scoreboard players operation #temp rMath = @s teamID

execute if score #teamR settings matches 0 if score #temp rMath matches 2.. run scoreboard players remove #temp rMath 1
execute if score #teamG settings matches 0 if score #temp rMath matches 3.. run scoreboard players remove #temp rMath 1
execute if score #teamB settings matches 0 if score #temp rMath matches 4.. run scoreboard players remove #temp rMath 1

scoreboard players remove #temp rMath 1


execute store result storage math:data macro.team int 1 run scoreboard players get #temp rMath
function _main_:games/global/player/inventory/get_macro with storage math:data macro
