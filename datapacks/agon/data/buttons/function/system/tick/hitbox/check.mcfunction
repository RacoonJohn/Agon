tag @s add sd.plane


execute as @a[tag=button.user] at @s anchored eyes positioned ^ ^ ^0.001 run function sd:api/plane_coord


execute on vehicle run data modify storage buttons:storage temp2 set from entity @s data

execute store result score #temp1 buttons.main run data get storage buttons:storage temp2.width 500
scoreboard players add #temp1 buttons.main 100
scoreboard players operation #temp2 buttons.main = #temp1 buttons.main
scoreboard players operation #temp2 buttons.main *= #-1 buttons.main

execute if score SD.dx rMath < #temp2 buttons.main run scoreboard players reset SD.dx rMath
execute if score SD.dx rMath > #temp1 buttons.main run scoreboard players reset SD.dx rMath


execute store result score #temp1 buttons.main run data get storage buttons:storage temp2.height 1000
scoreboard players add #temp1 buttons.main 50



#tellraw @a {score:{name:"#temp1",objective:"buttons.main"}}
#tellraw @a {score:{name:"SD.dy",objective:"rMath"}}

execute if score SD.dy rMath > #temp1 buttons.main run scoreboard players reset SD.dx rMath
execute if score SD.dy rMath matches ..-80 run scoreboard players reset SD.dx rMath


execute if score SD.dx rMath matches -2147483648..2147483647 if score SD.dz rMath matches 1.. if score SD.dz rMath < #min buttons.main run function buttons:system/tick/hitbox/new_min






tag @s remove sd.plane

