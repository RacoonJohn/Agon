
scoreboard players set #test rMath 0
execute if score @s posY-1 <= #temp posY if score @s posY >= #temp posY run scoreboard players set #test rMath 1
execute if score @s posY-1 >= #temp posY if score @s posY <= #temp posY run scoreboard players set #test rMath 1

execute if score #test rMath matches 0 run return fail

execute store result score #temp2 posX run attribute @s scale get -300
scoreboard players operation #temp3 posX = #temp2 posX
scoreboard players operation #temp3 posX *= #-1 rMath

scoreboard players operation #temp2 posZ = #temp2 posX
scoreboard players operation #temp3 posZ = #temp3 posX

scoreboard players operation #temp2 posX += #temp posX
scoreboard players operation #temp2 posZ += #temp posZ
scoreboard players operation #temp3 posX += #temp1 posX
scoreboard players operation #temp3 posZ += #temp1 posZ


execute if score @s posX-2 > #temp2 posX if score @s posX-2 < #temp3 posX if score @s posZ-2 > #temp2 posZ if score @s posZ-2 < #temp3 posZ run return 1
execute if score @s posX-1 > #temp2 posX if score @s posX-1 < #temp3 posX if score @s posZ-1 > #temp2 posZ if score @s posZ-1 < #temp3 posZ run return 1
execute if score @s posX > #temp2 posX if score @s posX < #temp3 posX if score @s posZ > #temp2 posZ if score @s posZ < #temp3 posZ run return 1
