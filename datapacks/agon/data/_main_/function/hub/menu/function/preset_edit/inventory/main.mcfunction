data remove storage _rin_:in inv

execute if entity @s[tag=InvUnitedPreset] run data modify storage _rin_:in inv set from storage math:data preset_selected.inventory.inv.united

execute if score @s[tag=!InvUnitedPreset] menu.id matches 0 run data modify storage _rin_:in inv set from storage math:data preset_selected.inventory.inv.team[0]
execute if score @s[tag=!InvUnitedPreset] menu.id matches 1 run data modify storage _rin_:in inv set from storage math:data preset_selected.inventory.inv.team[1]
execute if score @s[tag=!InvUnitedPreset] menu.id matches 2 run data modify storage _rin_:in inv set from storage math:data preset_selected.inventory.inv.team[2]
execute if score @s[tag=!InvUnitedPreset] menu.id matches 3 run data modify storage _rin_:in inv set from storage math:data preset_selected.inventory.inv.team[3]

execute if entity @s[tag=!InvUnitedPreset] unless data storage _rin_:in inv.Inventory unless data storage _rin_:in inv.equipment run data modify storage _rin_:in inv set from storage math:data preset_selected.inventory.inv.united
execute if entity @s[tag=InvUnitedPreset] unless data storage _rin_:in inv.Inventory unless data storage _rin_:in inv.equipment run data modify storage _rin_:in inv set from storage math:data preset_selected.inventory.inv.team[0]

scoreboard players operation @a[predicate=_main_:search_id] menu.id = @s menu.id
execute if entity @s[tag=InvUnitedPreset] run scoreboard players set @a[predicate=_main_:search_id] menu.id -1

execute as @a[predicate=_main_:search_id] run function _main_:hub/menu/function/preset_edit/inventory/player

