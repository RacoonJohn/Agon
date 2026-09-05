
scoreboard players operation #search menu.layer = @s menu.layer

execute store success score #reset rMath if entity @s[tag=resetEffect]


scoreboard players set #skip rMath 0
execute on vehicle on passengers if predicate _main_:search_menu_layer if entity @s[tag=namePreset] run function _main_:hub/menu/buttons/presets/update
execute on vehicle on passengers if predicate _main_:search_menu_layer if entity @s[tag=resetEffect] run function _main_:hub/menu/buttons/effects/edit/update with storage math:data effect_selected
execute on vehicle on passengers if predicate _main_:search_menu_layer if entity @s[tag=effectSelector] run function _main_:hub/menu/function/preset_edit/effects/save


execute on vehicle on passengers if predicate _main_:search_menu_layer run function _main_:hub/menu/buttons/close

scoreboard players remove @e[tag=menu,predicate=_main_:search_owner,limit=1] menu.layer 1




execute as @e[tag=menu,predicate=_main_:search_owner,limit=1] on passengers run function _main_:hub/menu/buttons/update_brightness


