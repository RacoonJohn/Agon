execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get #x rMath
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get #y rMath


data modify storage math:data macro.id set from storage math:data temp[0]
function _main_:hub/menu/buttons/effects/macro with storage math:data macro

data modify entity @s data.id set from storage math:data temp[0] 

scoreboard players operation @s menu.id = #count rMath

function _main_:hub/menu/buttons/ride

function _main_:hub/menu/buttons/rotate

