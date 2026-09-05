
data merge entity @s {item_display:fixed,brightness:{block:15,sky:15},item:{id:"stick",components:{"item_model":"pvp:team","custom_model_data":{colors:\ 
[-2745830]}}},transformation:{scale:[1,1,1],right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,-0.2,0]}}

execute if score #search teamID matches 2 run data modify entity @s item.components."minecraft:custom_model_data".colors[0] set value -15869156
execute if score #search teamID matches 3 run data modify entity @s item.components."minecraft:custom_model_data".colors[0] set value -15562789
execute if score #search teamID matches 4 run data modify entity @s item.components."minecraft:custom_model_data".colors[0] set value -1655019


scoreboard players operation @s _rin_global_ownerID = #search _rin_global_playerID
scoreboard players operation @s gameID = #search gameID


tag @s add noMove

execute store result score @s date run time query gametime
scoreboard players operation @s date += #timer rMath
