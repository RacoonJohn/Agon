function _rin_:api/player/inst/create

data modify storage _rin_:player this.inited set value true

clear @s

loot replace entity @s weapon.offhand loot _main_:place_holder/inf_blocks

loot replace entity @s hotbar.0 loot _main_:swords/iron
loot replace entity @s hotbar.1 loot _main_:pickaxes/netherite
loot replace entity @s hotbar.2 loot _main_:place_holder/bow

loot replace entity @s hotbar.4 loot _main_:axes/iron
scoreboard players set #count rMath 4
loot replace entity @s hotbar.5 loot _main_:specials/gap

loot replace entity @s container.17 loot _main_:specials/inf_arrow


loot replace entity @s armor.head loot _main_:armor/helmet/iron
loot replace entity @s armor.chest loot _main_:armor/chestplate/leather
loot replace entity @s armor.legs loot _main_:armor/leggings/iron
loot replace entity @s armor.feet loot _main_:armor/boots/leather

scoreboard players set #temp rMath 0
function _main_:games/global/player/save_inv

function _main_:games/global/player/inst/save

