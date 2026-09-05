execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get #x rMath
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get #y rMath



execute store result entity @s data int 1 run scoreboard players get #count rMath 
execute on passengers run data modify entity @s text.text set from storage math:data temp[0]

scoreboard players operation @s menu.id = #count rMath

function _main_:hub/menu/buttons/ride

function _main_:hub/menu/buttons/rotate

