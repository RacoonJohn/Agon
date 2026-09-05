
scoreboard players add @s menu.use 1
scoreboard players operation @s menu.use %= #2 rMath

execute store result storage math:data macro.idx int 1 run scoreboard players get @s menu.id
execute store result storage math:data macro.value byte 1 run scoreboard players get @s menu.use

function _main_:hub/menu/buttons/new_preset/gamerules/color

function _main_:hub/menu/function/gamerule/set with storage math:data macro


scoreboard players operation #test rMath = @s menu.use


execute on passengers run function _main_:hub/menu/buttons/new_preset/gamerules/name_macro with storage math:data macro


