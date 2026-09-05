function _main_:hub/menu/display/click

execute if entity @s[tag=start] run return run function _main_:hub/start

execute if entity @s[tag=games] at @s run return run function _main_:hub/menu/buttons/games/main

execute if entity @s[tag=maps] at @s run return run function _main_:hub/menu/buttons/maps/main

execute if entity @s[tag=presets] at @s run return run function _main_:hub/menu/buttons/presets/main

execute if entity @s[tag=newPreset] at @s run return run function _main_:hub/menu/buttons/new_preset/new
execute if entity @s[tag=editPreset] at @s run return run function _main_:hub/menu/buttons/new_preset/edit
execute if entity @s[tag=duplicatePreset] at @s run return run function _main_:hub/menu/function/preset_edit/duplicate
execute if entity @s[tag=deletePreset] at @s run return run function _main_:hub/menu/function/delete with storage math:data game_selected

execute if entity @s[tag=gamerulePreset] at @s run return run function _main_:hub/menu/buttons/new_preset/gamerules/main
execute if entity @s[tag=gameruleSelector] at @s run return run function _main_:hub/menu/function/gamerule/switch


execute if entity @s[tag=gameSelector] at @s run return run function _main_:hub/menu/function/game_select
execute if entity @s[tag=mapSelector] at @s run return run function _main_:hub/menu/function/map_select
execute if entity @s[tag=presetSelector] at @s run return run function _main_:hub/menu/function/preset_select

execute if entity @s[tag=InvUnitedChoicePreset] at @s run return run function _main_:hub/menu/function/preset_edit/mirror_match
execute if entity @s[tag=editInv] at @s run return run function _main_:hub/menu/function/preset_edit/inventory/main

execute if entity @s[tag=EffectsUnitedChoicePreset] at @s run return run function _main_:hub/menu/function/preset_edit/mirror_effects
execute if entity @s[tag=editEffects] at @s run return run function _main_:hub/menu/function/preset_edit/effects/main
execute if entity @s[tag=effectSelector] at @s run return run function _main_:hub/menu/buttons/effects/edit/main with entity @s data
execute if entity @s[tag=resetEffect] at @s run return run function _main_:hub/menu/function/preset_edit/effects/remove with storage math:data effect_selected



execute if entity @s[tag=namePreset] at @s run return run function _main_:hub/menu/function/preset_edit/name


execute if entity @s[tag=switch] at @s on passengers run return run function _main_:hub/menu/function/switch/main with entity @s data

execute if entity @s[tag=mv+] at @s run return run function _main_:hub/menu/function/mv/p with entity @s data
execute if entity @s[tag=mv-] at @s run return run function _main_:hub/menu/function/mv/m with entity @s data
execute if entity @s[tag=mvf] at @s run return run function _main_:hub/menu/function/mv/f with entity @s data
execute if entity @s[tag=mvd] at @s run return run function _main_:hub/menu/function/mv/d with entity @s data
execute if entity @s[tag=mvi] at @s run return run function _main_:hub/menu/function/mv/i with entity @s data
execute if entity @s[tag=mv1] at @s run return run function _main_:hub/menu/function/mv/1 with entity @s data


execute if entity @s[tag=close] at @s run return run function _main_:hub/menu/buttons/close_layer
