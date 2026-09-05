
execute store result score #temp1 menu.x run data get entity @s transformation.translation[0] 1000
execute store result score #temp1 menu.y run data get entity @s transformation.translation[1] 1000
execute store result score #temp1 menu.z run data get entity @s transformation.translation[2] 1000

execute store result score #temp1 menu.dx run data get entity @s transformation.scale[0] 10

scoreboard players operation #temp1 menu.x += #temp1 menu.dx

execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players operation #temp1 menu.x += #temp menu.x
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players operation #temp1 menu.y += #temp menu.y
execute store result entity @s transformation.translation[2] float 0.001 run scoreboard players operation #temp1 menu.z += #temp menu.z

execute store result score @s menu.dx run data get entity @s transformation.scale[0] 125
execute store result score @s menu.dy run data get entity @s transformation.scale[1] 250
execute store result score @s menu.dz run data get entity @s transformation.scale[2] 250

