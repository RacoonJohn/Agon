function _rin_:api/player/inst/create

clear @s


loot replace entity @s hotbar.0 loot _main_:place_holder/inf_fire_charge


loot replace entity @s armor.head loot _main_:armor/helmet/leather
loot replace entity @s armor.chest loot _main_:armor/chestplate/leather
loot replace entity @s armor.legs loot _main_:armor/leggings/leather
loot replace entity @s armor.feet loot _main_:armor/boots/leather


scoreboard players set #temp rMath 0
function _main_:games/global/player/save_inv

function _main_:games/global/player/inst/save

#say cpi