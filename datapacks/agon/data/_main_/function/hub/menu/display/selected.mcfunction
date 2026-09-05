
execute if entity @s[tag=selected] run return 1
execute if data entity @s transformation{scale:[0f,0f,0f]} run return 1


function _main_:hub/menu/display/get_scale


execute store result entity @s transformation.scale[0] float 0.0088 run scoreboard players get #temp menu.dx
execute store result entity @s transformation.scale[1] float 0.0044 run scoreboard players get #temp menu.dy
execute store result entity @s transformation.scale[2] float 0.0044 run scoreboard players get #temp menu.dz

data modify entity @s transformation.left_rotation set value [0.050,0.999,0,0]

execute on vehicle on passengers run tag @s remove selected
tag @s add selected
tag @s remove base

return 1
 