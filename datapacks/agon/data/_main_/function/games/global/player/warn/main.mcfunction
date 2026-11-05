scoreboard players add @s warnTime 1



scoreboard players operation #temp rMath = @s warnTime
scoreboard players operation #temp rMath %= #20 rMath
execute if score #temp rMath matches 0 run title @s actionbar {text:"You are outside of the map's borders",color:red}
execute if score #temp rMath matches 0 run playsound block.anvil.place neutral @s ~ ~ ~ 0.3 1 0



posteffect add @s pvp:damage


execute if score @s warnTime matches 60.. if score #temp rMath matches 0 run effect clear @s resistance
execute if score @s warnTime matches 60.. if score #temp rMath matches 0 run damage @s 2 outside_border
