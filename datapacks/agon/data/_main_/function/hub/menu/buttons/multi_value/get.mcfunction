execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get #x rMath
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get #y rMath
execute store result entity @s transformation.translation[2] float 0.001 run scoreboard players get #z rMath


data modify entity @s background set from storage math:data macro.background

data modify entity @s data.nbt set from storage math:data macro.nbt
data modify entity @s data.storage set from storage math:data macro.storage
data modify entity @s data.min set from storage math:data macro.min
data modify entity @s data.max set from storage math:data macro.max

function _main_:hub/menu/buttons/rotate
function _main_:hub/menu/buttons/ride