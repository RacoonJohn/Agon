

scoreboard players operation #temp rMath = @s menu.layer
scoreboard players operation #temp rMath -= @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer

execute if score #temp rMath matches ..-1 on passengers run data modify entity @s transformation.scale set value [0f,0f,0f]
execute if score #temp rMath matches ..-1 run return run data modify entity @s transformation.scale set value [0f,0f,0f]


execute store result entity @s transformation.scale[0] float 0.008 run scoreboard players get @s menu.dx
execute store result entity @s transformation.scale[1] float 0.004 run scoreboard players get @s menu.dy
execute store result entity @s transformation.scale[2] float 0.004 run scoreboard players get @s menu.dz

#tellraw @a {score:{name:"#temp",objective:"rMath"}}
execute on passengers store result entity @s transformation.scale[0] float 0.008 run scoreboard players get @s menu.dx
execute on passengers store result entity @s transformation.scale[1] float 0.004 run scoreboard players get @s menu.dy
execute on passengers store result entity @s transformation.scale[2] float 0.004 run scoreboard players get @s menu.dz


