#warn-off-file

execute if data storage math:data equipment.offhand run data modify entity @s item set from storage math:data equipment.offhand.components."minecraft:custom_data".original
execute if data storage math:data equipment.offhand run item replace entity @a[tag=unfreeze] weapon.offhand from entity @s container.0

#execute if data storage math:data equipment.head run data modify entity @s item set from storage math:data equipment.head.components."minecraft:custom_data".original
#execute if data storage math:data equipment.head run item replace entity @a[tag=unfreeze] armor.head from entity @s container.0
#
#execute if data storage math:data equipment.chest run data modify entity @s item set from storage math:data equipment.chest.components."minecraft:custom_data".original
#execute if data storage math:data equipment.chest run item replace entity @a[tag=unfreeze] armor.chest from entity @s container.0
#
#execute if data storage math:data equipment.legs run data modify entity @s item set from storage math:data equipment.legs.components."minecraft:custom_data".original
#execute if data storage math:data equipment.legs run item replace entity @a[tag=unfreeze] armor.legs from entity @s container.0
#
#execute if data storage math:data equipment.feet run data modify entity @s item set from storage math:data equipment.feet.components."minecraft:custom_data".original
#execute if data storage math:data equipment.feet run item replace entity @a[tag=unfreeze] armor.feet from entity @s container.0

item replace entity @s container.0 from entity @n[tag=unfreeze] player.cursor
execute if data entity @s item.id run data modify entity @s item set from entity @s item.components."minecraft:custom_data".original 
execute if data entity @s item.id run loot give @a[tag=unfreeze] loot _main_:sys/container0
item replace entity @a[tag=unfreeze] player.cursor with air

execute if data storage math:data Inventory[{Slot:0b}] run data modify entity @s item set from storage math:data Inventory[{Slot:0b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:0b}] run item replace entity @a[tag=unfreeze] container.0 from entity @s container.0
execute if data storage math:data Inventory[{Slot:1b}] run data modify entity @s item set from storage math:data Inventory[{Slot:1b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:1b}] run item replace entity @a[tag=unfreeze] container.1 from entity @s container.0
execute if data storage math:data Inventory[{Slot:2b}] run data modify entity @s item set from storage math:data Inventory[{Slot:2b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:2b}] run item replace entity @a[tag=unfreeze] container.2 from entity @s container.0
execute if data storage math:data Inventory[{Slot:3b}] run data modify entity @s item set from storage math:data Inventory[{Slot:3b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:3b}] run item replace entity @a[tag=unfreeze] container.3 from entity @s container.0
execute if data storage math:data Inventory[{Slot:4b}] run data modify entity @s item set from storage math:data Inventory[{Slot:4b}].components."minecraft:custom_data".original
#tellraw @a {nbt:'Inventory[{Slot:4b}]',storage:"math:data"}
execute if data storage math:data Inventory[{Slot:4b}] run item replace entity @a[tag=unfreeze] container.4 from entity @s container.0
execute if data storage math:data Inventory[{Slot:5b}] run data modify entity @s item set from storage math:data Inventory[{Slot:5b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:5b}] run item replace entity @a[tag=unfreeze] container.5 from entity @s container.0
execute if data storage math:data Inventory[{Slot:6b}] run data modify entity @s item set from storage math:data Inventory[{Slot:6b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:6b}] run item replace entity @a[tag=unfreeze] container.6 from entity @s container.0
execute if data storage math:data Inventory[{Slot:7b}] run data modify entity @s item set from storage math:data Inventory[{Slot:7b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:7b}] run item replace entity @a[tag=unfreeze] container.7 from entity @s container.0
execute if data storage math:data Inventory[{Slot:8b}] run data modify entity @s item set from storage math:data Inventory[{Slot:8b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:8b}] run item replace entity @a[tag=unfreeze] container.8 from entity @s container.0
execute if data storage math:data Inventory[{Slot:9b}] run data modify entity @s item set from storage math:data Inventory[{Slot:9b}].components."minecraft:custom_data".original 
execute if data storage math:data Inventory[{Slot:9b}] run item replace entity @a[tag=unfreeze] container.9 from entity @s container.0
execute if data storage math:data Inventory[{Slot:10b}] run data modify entity @s item set from storage math:data Inventory[{Slot:10b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:10b}] run item replace entity @a[tag=unfreeze] container.10 from entity @s container.0
execute if data storage math:data Inventory[{Slot:11b}] run data modify entity @s item set from storage math:data Inventory[{Slot:11b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:11b}] run item replace entity @a[tag=unfreeze] container.11 from entity @s container.0
execute if data storage math:data Inventory[{Slot:12b}] run data modify entity @s item set from storage math:data Inventory[{Slot:12b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:12b}] run item replace entity @a[tag=unfreeze] container.12 from entity @s container.0
execute if data storage math:data Inventory[{Slot:13b}] run data modify entity @s item set from storage math:data Inventory[{Slot:13b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:13b}] run item replace entity @a[tag=unfreeze] container.13 from entity @s container.0
execute if data storage math:data Inventory[{Slot:14b}] run data modify entity @s item set from storage math:data Inventory[{Slot:14b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:14b}] run item replace entity @a[tag=unfreeze] container.14 from entity @s container.0
execute if data storage math:data Inventory[{Slot:15b}] run data modify entity @s item set from storage math:data Inventory[{Slot:15b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:15b}] run item replace entity @a[tag=unfreeze] container.15 from entity @s container.0
execute if data storage math:data Inventory[{Slot:16b}] run data modify entity @s item set from storage math:data Inventory[{Slot:16b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:16b}] run item replace entity @a[tag=unfreeze] container.16 from entity @s container.0
execute if data storage math:data Inventory[{Slot:17b}] run data modify entity @s item set from storage math:data Inventory[{Slot:17b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:17b}] run item replace entity @a[tag=unfreeze] container.17 from entity @s container.0
execute if data storage math:data Inventory[{Slot:18b}] run data modify entity @s item set from storage math:data Inventory[{Slot:18b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:18b}] run item replace entity @a[tag=unfreeze] container.18 from entity @s container.0
execute if data storage math:data Inventory[{Slot:19b}] run data modify entity @s item set from storage math:data Inventory[{Slot:19b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:19b}] run item replace entity @a[tag=unfreeze] container.19 from entity @s container.0
execute if data storage math:data Inventory[{Slot:20b}] run data modify entity @s item set from storage math:data Inventory[{Slot:20b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:20b}] run item replace entity @a[tag=unfreeze] container.20 from entity @s container.0
execute if data storage math:data Inventory[{Slot:21b}] run data modify entity @s item set from storage math:data Inventory[{Slot:21b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:21b}] run item replace entity @a[tag=unfreeze] container.21 from entity @s container.0
execute if data storage math:data Inventory[{Slot:22b}] run data modify entity @s item set from storage math:data Inventory[{Slot:22b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:22b}] run item replace entity @a[tag=unfreeze] container.22 from entity @s container.0
execute if data storage math:data Inventory[{Slot:23b}] run data modify entity @s item set from storage math:data Inventory[{Slot:23b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:23b}] run item replace entity @a[tag=unfreeze] container.23 from entity @s container.0
execute if data storage math:data Inventory[{Slot:24b}] run data modify entity @s item set from storage math:data Inventory[{Slot:24b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:24b}] run item replace entity @a[tag=unfreeze] container.24 from entity @s container.0
execute if data storage math:data Inventory[{Slot:25b}] run data modify entity @s item set from storage math:data Inventory[{Slot:25b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:25b}] run item replace entity @a[tag=unfreeze] container.25 from entity @s container.0
execute if data storage math:data Inventory[{Slot:26b}] run data modify entity @s item set from storage math:data Inventory[{Slot:26b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:26b}] run item replace entity @a[tag=unfreeze] container.26 from entity @s container.0
execute if data storage math:data Inventory[{Slot:27b}] run data modify entity @s item set from storage math:data Inventory[{Slot:27b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:27b}] run item replace entity @a[tag=unfreeze] container.27 from entity @s container.0
execute if data storage math:data Inventory[{Slot:28b}] run data modify entity @s item set from storage math:data Inventory[{Slot:28b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:28b}] run item replace entity @a[tag=unfreeze] container.28 from entity @s container.0
execute if data storage math:data Inventory[{Slot:29b}] run data modify entity @s item set from storage math:data Inventory[{Slot:29b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:29b}] run item replace entity @a[tag=unfreeze] container.29 from entity @s container.0
execute if data storage math:data Inventory[{Slot:30b}] run data modify entity @s item set from storage math:data Inventory[{Slot:30b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:30b}] run item replace entity @a[tag=unfreeze] container.30 from entity @s container.0
execute if data storage math:data Inventory[{Slot:31b}] run data modify entity @s item set from storage math:data Inventory[{Slot:31b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:31b}] run item replace entity @a[tag=unfreeze] container.31 from entity @s container.0
execute if data storage math:data Inventory[{Slot:32b}] run data modify entity @s item set from storage math:data Inventory[{Slot:32b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:32b}] run item replace entity @a[tag=unfreeze] container.32 from entity @s container.0
execute if data storage math:data Inventory[{Slot:33b}] run data modify entity @s item set from storage math:data Inventory[{Slot:33b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:33b}] run item replace entity @a[tag=unfreeze] container.33 from entity @s container.0
execute if data storage math:data Inventory[{Slot:34b}] run data modify entity @s item set from storage math:data Inventory[{Slot:34b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:34b}] run item replace entity @a[tag=unfreeze] container.34 from entity @s container.0
execute if data storage math:data Inventory[{Slot:35b}] run data modify entity @s item set from storage math:data Inventory[{Slot:35b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:35b}] run item replace entity @a[tag=unfreeze] container.35 from entity @s container.0
execute if data storage math:data Inventory[{Slot:36b}] run data modify entity @s item set from storage math:data Inventory[{Slot:36b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:36b}] run item replace entity @a[tag=unfreeze] container.36 from entity @s container.0
execute if data storage math:data Inventory[{Slot:37b}] run data modify entity @s item set from storage math:data Inventory[{Slot:37b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:37b}] run item replace entity @a[tag=unfreeze] container.37 from entity @s container.0
execute if data storage math:data Inventory[{Slot:38b}] run data modify entity @s item set from storage math:data Inventory[{Slot:38b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:38b}] run item replace entity @a[tag=unfreeze] container.38 from entity @s container.0
execute if data storage math:data Inventory[{Slot:39b}] run data modify entity @s item set from storage math:data Inventory[{Slot:39b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:39b}] run item replace entity @a[tag=unfreeze] container.39 from entity @s container.0
execute if data storage math:data Inventory[{Slot:40b}] run data modify entity @s item set from storage math:data Inventory[{Slot:40b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:40b}] run item replace entity @a[tag=unfreeze] container.40 from entity @s container.0
execute if data storage math:data Inventory[{Slot:41b}] run data modify entity @s item set from storage math:data Inventory[{Slot:41b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:41b}] run item replace entity @a[tag=unfreeze] container.41 from entity @s container.0
execute if data storage math:data Inventory[{Slot:42b}] run data modify entity @s item set from storage math:data Inventory[{Slot:42b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:42b}] run item replace entity @a[tag=unfreeze] container.42 from entity @s container.0
execute if data storage math:data Inventory[{Slot:43b}] run data modify entity @s item set from storage math:data Inventory[{Slot:43b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:43b}] run item replace entity @a[tag=unfreeze] container.43 from entity @s container.0
execute if data storage math:data Inventory[{Slot:44b}] run data modify entity @s item set from storage math:data Inventory[{Slot:44b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:44b}] run item replace entity @a[tag=unfreeze] container.44 from entity @s container.0
execute if data storage math:data Inventory[{Slot:45b}] run data modify entity @s item set from storage math:data Inventory[{Slot:45b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:45b}] run item replace entity @a[tag=unfreeze] container.45 from entity @s container.0
execute if data storage math:data Inventory[{Slot:46b}] run data modify entity @s item set from storage math:data Inventory[{Slot:46b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:46b}] run item replace entity @a[tag=unfreeze] container.46 from entity @s container.0
execute if data storage math:data Inventory[{Slot:47b}] run data modify entity @s item set from storage math:data Inventory[{Slot:47b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:47b}] run item replace entity @a[tag=unfreeze] container.47 from entity @s container.0
execute if data storage math:data Inventory[{Slot:48b}] run data modify entity @s item set from storage math:data Inventory[{Slot:48b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:48b}] run item replace entity @a[tag=unfreeze] container.48 from entity @s container.0
execute if data storage math:data Inventory[{Slot:49b}] run data modify entity @s item set from storage math:data Inventory[{Slot:49b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:49b}] run item replace entity @a[tag=unfreeze] container.49 from entity @s container.0
execute if data storage math:data Inventory[{Slot:50b}] run data modify entity @s item set from storage math:data Inventory[{Slot:50b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:50b}] run item replace entity @a[tag=unfreeze] container.50 from entity @s container.0
execute if data storage math:data Inventory[{Slot:51b}] run data modify entity @s item set from storage math:data Inventory[{Slot:51b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:51b}] run item replace entity @a[tag=unfreeze] container.51 from entity @s container.0
execute if data storage math:data Inventory[{Slot:52b}] run data modify entity @s item set from storage math:data Inventory[{Slot:52b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:52b}] run item replace entity @a[tag=unfreeze] container.52 from entity @s container.0
execute if data storage math:data Inventory[{Slot:53b}] run data modify entity @s item set from storage math:data Inventory[{Slot:53b}].components."minecraft:custom_data".original
execute if data storage math:data Inventory[{Slot:53b}] run item replace entity @a[tag=unfreeze] container.53 from entity @s container.0
kill @s
