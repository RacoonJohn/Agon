
execute if entity @s[tag=EffectsUnitedPreset] run data modify storage math:data effects_selected set from storage math:data preset_selected.effects.pool.united

execute if score @s[tag=!EffectsUnitedPreset] menu.id matches 0 run data modify storage math:data effects_selected set from storage math:data preset_selected.effects.pool.team[0]
execute if score @s[tag=!EffectsUnitedPreset] menu.id matches 1 run data modify storage math:data effects_selected set from storage math:data preset_selected.effects.pool.team[1]
execute if score @s[tag=!EffectsUnitedPreset] menu.id matches 2 run data modify storage math:data effects_selected set from storage math:data preset_selected.effects.pool.team[2]
execute if score @s[tag=!EffectsUnitedPreset] menu.id matches 3 run data modify storage math:data effects_selected set from storage math:data preset_selected.effects.pool.team[3]

#execute if entity @s[tag=!InvUnitedPreset] unless data storage math:data effects_selected."" run data modify storage math:data effects_selected set from storage math:data preset_selected.effects.pool.united
#execute if entity @s[tag=InvUnitedPreset] unless data storage math:data effects_selected."" run data modify storage math:data effects_selected set from storage math:data preset_selected.effects.pool.team[0]

execute store result storage math:data effects_selected.id int 1 run scoreboard players get @s menu.id

function _main_:hub/menu/buttons/effects/main

