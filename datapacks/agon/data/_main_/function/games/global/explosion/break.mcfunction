
execute store result score #temp rMath run function _main_:games/global/explosion/get_dur
scoreboard players operation #count1 rMath -= #temp rMath

execute if score #count1 rMath matches 1.. run setblock ~ ~ ~ air

