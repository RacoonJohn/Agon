

execute if items entity @s armor.head *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/head with storage math:data player.equipment.head.components."minecraft:custom_data".place_holder
execute if items entity @s armor.chest *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/chest with storage math:data player.equipment.chest.components."minecraft:custom_data".place_holder
execute if items entity @s armor.legs *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/legs with storage math:data player.equipment.legs.components."minecraft:custom_data".place_holder
execute if items entity @s armor.feet *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/feet with storage math:data player.equipment.feet.components."minecraft:custom_data".place_holder

execute if items entity @s weapon.offhand *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/offhand with storage math:data player.equipment.offhand.components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.0 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.0 with storage math:data player.Inventory[{Slot:0b}].components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.1 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.1 with storage math:data player.Inventory[{Slot:1b}].components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.2 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.2 with storage math:data player.Inventory[{Slot:2b}].components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.3 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.3 with storage math:data player.Inventory[{Slot:3b}].components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.4 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.4 with storage math:data player.Inventory[{Slot:4b}].components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.5 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.5 with storage math:data player.Inventory[{Slot:5b}].components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.6 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.6 with storage math:data player.Inventory[{Slot:6b}].components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.7 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.7 with storage math:data player.Inventory[{Slot:7b}].components."minecraft:custom_data".place_holder
execute if items entity @s hotbar.8 *[custom_data~{place_holder:{inited:false}}] run function _main_:games/global/player/items/place_holder/hotbar.8 with storage math:data player.Inventory[{Slot:8b}].components."minecraft:custom_data".place_holder


clear @s *[custom_data~{place_holder:{id:"inf_blocks"}}] 1
clear @s *[custom_data~{place_holder:{id:"inf_wools"}}] 1
