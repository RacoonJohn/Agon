
function _main_:hub/menu/function/save_preset with storage math:data preset_selected

data modify storage math:data preset_selected set from entity @s data

data modify storage math:data effect_selected set value {}
data modify storage math:data effects_selected set value {}

execute store result storage math:data game_selected.preset_selected int 1 run scoreboard players get @s menu.id


