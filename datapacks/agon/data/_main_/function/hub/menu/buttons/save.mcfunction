
scoreboard players set #skip rMath 1

execute if entity @e[tag=resetEffect,type=text_display] run function _main_:hub/menu/buttons/effects/edit/update with storage math:data effect_selected
execute if entity @e[tag=effectSelector,type=text_display] run function _main_:hub/menu/function/preset_edit/effects/save

