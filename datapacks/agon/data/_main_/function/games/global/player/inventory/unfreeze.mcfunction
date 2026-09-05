



data get entity @s Item

data modify storage math:data Inventory set from entity @s Inventory

data modify storage math:data equipment set from entity @s equipment

tag @s add unfreeze

execute summon item_display run function _main_:games/global/player/inventory/unfreeze_summon

tag @s remove unfreeze

tag @s remove organize

function _main_:games/global/player/inventory/set







