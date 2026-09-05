function _rin_:api/player/inst/create

clear @s

loot replace entity @s hotbar.0 loot _main_:place_holder/inf_wools

scoreboard players set #count rMath 3
loot replace entity @s hotbar.1 loot _main_:place_holder/fire_charge
scoreboard players set #count rMath 4
loot replace entity @s hotbar.2 loot _main_:place_holder/ladder



loot replace entity @s armor.head loot _main_:armor/helmet/leather
loot replace entity @s armor.chest loot _main_:armor/chestplate/leather
loot replace entity @s armor.legs loot _main_:armor/leggings/leather
loot replace entity @s armor.feet loot _main_:armor/boots/leather


scoreboard players set #temp rMath 1

function _main_:games/global/player/save_inv

function _main_:games/global/player/inst/save

