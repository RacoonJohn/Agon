function _rin_:api/player/inst/create

clear @s

loot replace entity @s weapon.offhand loot _main_:place_holder/inf_wools

loot replace entity @s hotbar.0 loot _main_:swords/iron
loot replace entity @s hotbar.1 loot _main_:shears/effi1
#loot replace entity @s hotbar.2 loot _main_:specials/hunter_horn

loot replace entity @s hotbar.3 loot _main_:axes/iron


loot replace entity @s armor.head loot _main_:armor/helmet/leather
loot replace entity @s armor.chest loot _main_:armor/chestplate/leather
loot replace entity @s armor.legs loot _main_:armor/leggings/leather
loot replace entity @s armor.feet loot _main_:armor/boots/leather


scoreboard players set #temp rMath 0

function _main_:games/global/player/save_inv

function _main_:games/global/player/inst/save

#say cpi