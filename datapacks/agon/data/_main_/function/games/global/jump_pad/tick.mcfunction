
execute store success score #big rMath if entity @s[tag=big]


execute unless score @s posX matches -2147483648..2147483647 store result score @s posX run data get entity @s Pos[0] 1000
execute unless score @s posY matches -2147483648..2147483647 store result score @s posY run data get entity @s Pos[1] 1000
execute unless score @s posZ matches -2147483648..2147483647 store result score @s posZ run data get entity @s Pos[2] 1000

scoreboard players operation #temp posX = @s posX
scoreboard players operation #temp posY = @s posY
scoreboard players operation #temp posZ = @s posZ

scoreboard players operation #temp1 posX = #temp posX
scoreboard players operation #temp1 posZ = #temp posZ

scoreboard players remove #temp posX 1000
scoreboard players remove #temp posZ 1000
scoreboard players add #temp1 posX 1000
scoreboard players add #temp1 posZ 1000

execute positioned ~-2 ~-1 ~-2 as @a[dx=3,dy=1000,dz=3,predicate=_main_:input/jump,tag=!jumpPaded] if function _main_:games/global/jump_pad/detection at @s run function _main_:games/global/jump_pad/jump

execute positioned ~-2 ~-1 ~-2 as @a[dx=3,dy=1000,dz=3,tag=jumpPaded] if function _main_:games/global/jump_pad/detection run tag @s add jumpPaded.persist

