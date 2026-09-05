
execute if data entity @s transformation{scale:[0f,0f,0f]} run return fail


function _main_:hub/menu/display/get_scale


execute store result entity @s transformation.scale[0] float 0.008 run scoreboard players get #temp menu.dx
execute store result entity @s transformation.scale[1] float 0.004 run scoreboard players get #temp menu.dy
execute store result entity @s transformation.scale[2] float 0.004 run scoreboard players get #temp menu.dz

data modify entity @s transformation.left_rotation set value [0,1,0,0]

tag @s add base
