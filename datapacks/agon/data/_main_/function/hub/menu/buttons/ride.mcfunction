
ride @s mount @e[tag=menu,predicate=_main_:search_owner,limit=1]

execute store result score @s menu.x run data get entity @s transformation.translation[0] 1000
execute store result score @s menu.y run data get entity @s transformation.translation[1] 1000
execute store result score @s menu.z run data get entity @s transformation.translation[2] 1000

execute store result score @s menu.dx run data get entity @s transformation.scale[0] 125
execute store result score @s menu.dy run data get entity @s transformation.scale[1] 250
execute store result score @s menu.dz run data get entity @s transformation.scale[2] 250

scoreboard players operation @s menu.layer = @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer
scoreboard players operation @s _rin_global_ownerID = #search _rin_global_ownerID

scoreboard players set #temp rMath 2
scoreboard players operation #temp rMath *= @s menu.layer
scoreboard players operation @s menu.z -= #temp rMath


scoreboard players operation #temp menu.x = @s menu.x
scoreboard players operation #temp menu.y = @s menu.y
scoreboard players operation #temp menu.z = @s menu.z

execute on passengers run function _main_:hub/menu/buttons/offset


scoreboard players operation #temp menu.dx = @s menu.dx
scoreboard players operation #temp menu.dx /= #10 rMath
scoreboard players operation @s menu.x += #temp menu.dx

execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get @s menu.x
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get @s menu.y
execute store result entity @s transformation.translation[2] float 0.001 run scoreboard players get @s menu.z

scoreboard players operation @s menu.x -= #temp menu.dx


scoreboard players operation #temp menu.dx = @s menu.dx
scoreboard players operation #temp menu.dx /= #2 rMath
scoreboard players operation @s menu.x -= #temp menu.dx


tag @s remove new

