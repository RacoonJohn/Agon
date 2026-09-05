execute store result entity @s transformation.translation[0] float 0.001 run scoreboard players get #x rMath
execute store result entity @s transformation.translation[1] float 0.001 run scoreboard players get #y rMath



execute store result score @s menu.use run data get storage math:data temp1[0]

function _main_:hub/menu/buttons/new_preset/gamerules/color

scoreboard players operation #test rMath = @s menu.use

execute on passengers run function _main_:hub/menu/buttons/new_preset/gamerules/name_macro with storage math:data temp[0] 

scoreboard players operation @s menu.id = #count rMath

function _main_:hub/menu/buttons/ride

function _main_:hub/menu/buttons/rotate

