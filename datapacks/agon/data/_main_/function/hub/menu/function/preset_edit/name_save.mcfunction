
tag @s remove editName

scoreboard players operation #search _rin_global_playerID = @s _rin_global_playerID


data modify storage math:data preset_selected.name set from block -9941 1 -10002 front_text.messages[0]


function _main_:games/global/player/return_to_lobby


function _main_:hub/menu/function/save_preset with storage math:data preset_selected

execute as @e[tag=namePreset,type=text_display,limit=1] at @s run function _main_:hub/menu/buttons/close_layer

execute as @e[tag=newPreset,type=text_display,limit=1] at @s run function _main_:hub/menu/buttons/new_preset/edit



