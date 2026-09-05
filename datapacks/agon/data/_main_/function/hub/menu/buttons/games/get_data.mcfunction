execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get #x rMath
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get #y rMath




data modify entity @s data.id set from storage math:data temp[0].id
execute on passengers run data modify entity @s text.text set from storage math:data temp[0].name

execute store result score @s menu.id run data get storage math:data temp[0].id

function _main_:hub/menu/buttons/ride

function _main_:hub/menu/buttons/rotate

