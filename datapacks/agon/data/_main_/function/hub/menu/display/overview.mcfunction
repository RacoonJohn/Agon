
execute if score #click rMath matches 1 run return run function _main_:hub/menu/function/choice

execute if entity @s[tag=select] run return 1



execute if data entity @s transformation{scale:[0f,0f,0f]} run return 1

function _main_:hub/menu/display/get_scale
execute store result entity @s transformation.scale[0] float 0.0088 run scoreboard players get #temp menu.dx
execute store result entity @s transformation.scale[1] float 0.0044 run scoreboard players get #temp menu.dy
execute store result entity @s transformation.scale[2] float 0.0044 run scoreboard players get #temp menu.dz


execute on vehicle on passengers run tag @s remove select
tag @s add select
tag @s remove base

return 1
 