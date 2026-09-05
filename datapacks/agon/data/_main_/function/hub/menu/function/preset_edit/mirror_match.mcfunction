execute store result score #test rMath run data get storage math:data preset_selected.inventory.united
scoreboard players add #test rMath 1
scoreboard players operation #test rMath %= #2 rMath
execute store result storage math:data preset_selected.inventory.united byte 1 run scoreboard players get #test rMath

function _main_:hub/menu/buttons/close_layer

function _main_:hub/menu/buttons/new_preset/edit


