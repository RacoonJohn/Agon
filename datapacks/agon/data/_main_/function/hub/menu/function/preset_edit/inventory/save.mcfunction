
tag @s remove editInv

data modify storage math:data inv set value {}
data modify storage math:data inv.Inventory set from entity @s Inventory
data modify storage math:data inv.equipment set from entity @s equipment
data modify storage math:data inv.EderItems set from entity @s EnderItems

execute if score @s menu.id matches -1 run data modify storage math:data preset_selected.inventory.inv.united set from storage math:data inv
execute if score @s menu.id matches 0 run data modify storage math:data preset_selected.inventory.inv.team[0] set from storage math:data inv
execute if score @s menu.id matches 1 run data modify storage math:data preset_selected.inventory.inv.team[1] set from storage math:data inv
execute if score @s menu.id matches 2 run data modify storage math:data preset_selected.inventory.inv.team[2] set from storage math:data inv
execute if score @s menu.id matches 3 run data modify storage math:data preset_selected.inventory.inv.team[3] set from storage math:data inv


scoreboard players operation #test rMath = #gametime rMath
scoreboard players add #test rMath 5

scoreboard players operation @e[tag=menu,type=block_display,limit=1] date = #test rMath

function _main_:games/global/player/return_to_lobby


function _main_:hub/menu/function/save_preset with storage math:data preset_selected
