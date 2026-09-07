
data modify storage math:data player set from entity @s

function _main_:games/global/player/items/place_holder

data modify storage math:data equipment set from entity @s equipment
data modify storage math:data Inventory set from entity @s Inventory

data modify storage math:data equipment.offhand.macro.original set from storage math:data equipment.offhand
data modify storage math:data equipment.head.macro.original set from storage math:data equipment.head
data modify storage math:data equipment.chest.macro.original set from storage math:data equipment.chest
data modify storage math:data equipment.legs.macro.original set from storage math:data equipment.legs
data modify storage math:data equipment.feet.macro.original set from storage math:data equipment.feet

data modify storage math:data equipment.offhand.macro.item_model set from storage math:data equipment.offhand.components."minecraft:item_model"
data modify storage math:data equipment.head.macro.item_model set from storage math:data equipment.head.components."minecraft:item_model"
data modify storage math:data equipment.chest.macro.item_model set from storage math:data equipment.chest.components."minecraft:item_model"
data modify storage math:data equipment.legs.macro.item_model set from storage math:data equipment.legs.components."minecraft:item_model"
data modify storage math:data equipment.feet.macro.item_model set from storage math:data equipment.feet.components."minecraft:item_model"

execute unless data storage math:data equipment.offhand.macro.item_model run data modify storage math:data equipment.offhand.macro.item_model set from storage math:data equipment.offhand.id
execute unless data storage math:data equipment.head.macro.item_model run data modify storage math:data equipment.head.macro.item_model set from storage math:data equipment.head.id
execute unless data storage math:data equipment.chest.macro.item_model run data modify storage math:data equipment.chest.macro.item_model set from storage math:data equipment.chest.id
execute unless data storage math:data equipment.legs.macro.item_model run data modify storage math:data equipment.legs.macro.item_model set from storage math:data equipment.legs.id
execute unless data storage math:data equipment.feet.macro.item_model run data modify storage math:data equipment.feet.macro.item_model set from storage math:data equipment.feet.id


data modify storage math:data Inventory[{Slot:0b}].macro.original set from storage math:data Inventory[{Slot:0b}]
data modify storage math:data Inventory[{Slot:1b}].macro.original set from storage math:data Inventory[{Slot:1b}]
data modify storage math:data Inventory[{Slot:2b}].macro.original set from storage math:data Inventory[{Slot:2b}]
data modify storage math:data Inventory[{Slot:3b}].macro.original set from storage math:data Inventory[{Slot:3b}]
data modify storage math:data Inventory[{Slot:4b}].macro.original set from storage math:data Inventory[{Slot:4b}]
data modify storage math:data Inventory[{Slot:5b}].macro.original set from storage math:data Inventory[{Slot:5b}]
data modify storage math:data Inventory[{Slot:6b}].macro.original set from storage math:data Inventory[{Slot:6b}]
data modify storage math:data Inventory[{Slot:7b}].macro.original set from storage math:data Inventory[{Slot:7b}]
data modify storage math:data Inventory[{Slot:8b}].macro.original set from storage math:data Inventory[{Slot:8b}]
data modify storage math:data Inventory[{Slot:9b}].macro.original set from storage math:data Inventory[{Slot:9b}]
data modify storage math:data Inventory[{Slot:10b}].macro.original set from storage math:data Inventory[{Slot:10b}]
data modify storage math:data Inventory[{Slot:11b}].macro.original set from storage math:data Inventory[{Slot:11b}]
data modify storage math:data Inventory[{Slot:12b}].macro.original set from storage math:data Inventory[{Slot:12b}]
data modify storage math:data Inventory[{Slot:13b}].macro.original set from storage math:data Inventory[{Slot:13b}]
data modify storage math:data Inventory[{Slot:14b}].macro.original set from storage math:data Inventory[{Slot:14b}]
data modify storage math:data Inventory[{Slot:15b}].macro.original set from storage math:data Inventory[{Slot:15b}]
data modify storage math:data Inventory[{Slot:16b}].macro.original set from storage math:data Inventory[{Slot:16b}]
data modify storage math:data Inventory[{Slot:17b}].macro.original set from storage math:data Inventory[{Slot:17b}]
data modify storage math:data Inventory[{Slot:18b}].macro.original set from storage math:data Inventory[{Slot:18b}]
data modify storage math:data Inventory[{Slot:19b}].macro.original set from storage math:data Inventory[{Slot:19b}]
data modify storage math:data Inventory[{Slot:20b}].macro.original set from storage math:data Inventory[{Slot:20b}]
data modify storage math:data Inventory[{Slot:21b}].macro.original set from storage math:data Inventory[{Slot:21b}]
data modify storage math:data Inventory[{Slot:22b}].macro.original set from storage math:data Inventory[{Slot:22b}]
data modify storage math:data Inventory[{Slot:23b}].macro.original set from storage math:data Inventory[{Slot:23b}]
data modify storage math:data Inventory[{Slot:24b}].macro.original set from storage math:data Inventory[{Slot:24b}]
data modify storage math:data Inventory[{Slot:25b}].macro.original set from storage math:data Inventory[{Slot:25b}]
data modify storage math:data Inventory[{Slot:26b}].macro.original set from storage math:data Inventory[{Slot:26b}]
data modify storage math:data Inventory[{Slot:27b}].macro.original set from storage math:data Inventory[{Slot:27b}]
data modify storage math:data Inventory[{Slot:28b}].macro.original set from storage math:data Inventory[{Slot:28b}]
data modify storage math:data Inventory[{Slot:29b}].macro.original set from storage math:data Inventory[{Slot:29b}]
data modify storage math:data Inventory[{Slot:30b}].macro.original set from storage math:data Inventory[{Slot:30b}]
data modify storage math:data Inventory[{Slot:31b}].macro.original set from storage math:data Inventory[{Slot:31b}]
data modify storage math:data Inventory[{Slot:32b}].macro.original set from storage math:data Inventory[{Slot:32b}]
data modify storage math:data Inventory[{Slot:33b}].macro.original set from storage math:data Inventory[{Slot:33b}]
data modify storage math:data Inventory[{Slot:34b}].macro.original set from storage math:data Inventory[{Slot:34b}]
data modify storage math:data Inventory[{Slot:35b}].macro.original set from storage math:data Inventory[{Slot:35b}]
data modify storage math:data Inventory[{Slot:36b}].macro.original set from storage math:data Inventory[{Slot:36b}]
data modify storage math:data Inventory[{Slot:37b}].macro.original set from storage math:data Inventory[{Slot:37b}]
data modify storage math:data Inventory[{Slot:38b}].macro.original set from storage math:data Inventory[{Slot:38b}]
data modify storage math:data Inventory[{Slot:39b}].macro.original set from storage math:data Inventory[{Slot:39b}]
data modify storage math:data Inventory[{Slot:40b}].macro.original set from storage math:data Inventory[{Slot:40b}]
data modify storage math:data Inventory[{Slot:41b}].macro.original set from storage math:data Inventory[{Slot:41b}]
data modify storage math:data Inventory[{Slot:42b}].macro.original set from storage math:data Inventory[{Slot:42b}]
data modify storage math:data Inventory[{Slot:43b}].macro.original set from storage math:data Inventory[{Slot:43b}]
data modify storage math:data Inventory[{Slot:44b}].macro.original set from storage math:data Inventory[{Slot:44b}]
data modify storage math:data Inventory[{Slot:45b}].macro.original set from storage math:data Inventory[{Slot:45b}]
data modify storage math:data Inventory[{Slot:46b}].macro.original set from storage math:data Inventory[{Slot:46b}]
data modify storage math:data Inventory[{Slot:47b}].macro.original set from storage math:data Inventory[{Slot:47b}]
data modify storage math:data Inventory[{Slot:48b}].macro.original set from storage math:data Inventory[{Slot:48b}]
data modify storage math:data Inventory[{Slot:49b}].macro.original set from storage math:data Inventory[{Slot:49b}]
data modify storage math:data Inventory[{Slot:50b}].macro.original set from storage math:data Inventory[{Slot:50b}]
data modify storage math:data Inventory[{Slot:51b}].macro.original set from storage math:data Inventory[{Slot:51b}]
data modify storage math:data Inventory[{Slot:52b}].macro.original set from storage math:data Inventory[{Slot:52b}]
data modify storage math:data Inventory[{Slot:53b}].macro.original set from storage math:data Inventory[{Slot:53b}]

data modify storage math:data Inventory[{Slot:0b}].macro.id set string storage math:data Inventory[{Slot:0b}].id 10
data modify storage math:data Inventory[{Slot:1b}].macro.id set string storage math:data Inventory[{Slot:1b}].id 10
data modify storage math:data Inventory[{Slot:2b}].macro.id set string storage math:data Inventory[{Slot:2b}].id 10
data modify storage math:data Inventory[{Slot:3b}].macro.id set string storage math:data Inventory[{Slot:3b}].id 10
data modify storage math:data Inventory[{Slot:4b}].macro.id set string storage math:data Inventory[{Slot:4b}].id 10
data modify storage math:data Inventory[{Slot:5b}].macro.id set string storage math:data Inventory[{Slot:5b}].id 10
data modify storage math:data Inventory[{Slot:6b}].macro.id set string storage math:data Inventory[{Slot:6b}].id 10
data modify storage math:data Inventory[{Slot:7b}].macro.id set string storage math:data Inventory[{Slot:7b}].id 10
data modify storage math:data Inventory[{Slot:8b}].macro.id set string storage math:data Inventory[{Slot:8b}].id 10
data modify storage math:data Inventory[{Slot:9b}].macro.id set string storage math:data Inventory[{Slot:9b}].id 10
data modify storage math:data Inventory[{Slot:10b}].macro.id set string storage math:data Inventory[{Slot:10b}].id 10
data modify storage math:data Inventory[{Slot:11b}].macro.id set string storage math:data Inventory[{Slot:11b}].id 10
data modify storage math:data Inventory[{Slot:12b}].macro.id set string storage math:data Inventory[{Slot:12b}].id 10
data modify storage math:data Inventory[{Slot:13b}].macro.id set string storage math:data Inventory[{Slot:13b}].id 10
data modify storage math:data Inventory[{Slot:14b}].macro.id set string storage math:data Inventory[{Slot:14b}].id 10
data modify storage math:data Inventory[{Slot:15b}].macro.id set string storage math:data Inventory[{Slot:15b}].id 10
data modify storage math:data Inventory[{Slot:16b}].macro.id set string storage math:data Inventory[{Slot:16b}].id 10
data modify storage math:data Inventory[{Slot:17b}].macro.id set string storage math:data Inventory[{Slot:17b}].id 10
data modify storage math:data Inventory[{Slot:18b}].macro.id set string storage math:data Inventory[{Slot:18b}].id 10
data modify storage math:data Inventory[{Slot:19b}].macro.id set string storage math:data Inventory[{Slot:19b}].id 10
data modify storage math:data Inventory[{Slot:20b}].macro.id set string storage math:data Inventory[{Slot:20b}].id 10
data modify storage math:data Inventory[{Slot:21b}].macro.id set string storage math:data Inventory[{Slot:21b}].id 10
data modify storage math:data Inventory[{Slot:22b}].macro.id set string storage math:data Inventory[{Slot:22b}].id 10
data modify storage math:data Inventory[{Slot:23b}].macro.id set string storage math:data Inventory[{Slot:23b}].id 10
data modify storage math:data Inventory[{Slot:24b}].macro.id set string storage math:data Inventory[{Slot:24b}].id 10
data modify storage math:data Inventory[{Slot:25b}].macro.id set string storage math:data Inventory[{Slot:25b}].id 10
data modify storage math:data Inventory[{Slot:26b}].macro.id set string storage math:data Inventory[{Slot:26b}].id 10
data modify storage math:data Inventory[{Slot:27b}].macro.id set string storage math:data Inventory[{Slot:27b}].id 10
data modify storage math:data Inventory[{Slot:28b}].macro.id set string storage math:data Inventory[{Slot:28b}].id 10
data modify storage math:data Inventory[{Slot:29b}].macro.id set string storage math:data Inventory[{Slot:29b}].id 10
data modify storage math:data Inventory[{Slot:30b}].macro.id set string storage math:data Inventory[{Slot:30b}].id 10
data modify storage math:data Inventory[{Slot:31b}].macro.id set string storage math:data Inventory[{Slot:31b}].id 10
data modify storage math:data Inventory[{Slot:32b}].macro.id set string storage math:data Inventory[{Slot:32b}].id 10
data modify storage math:data Inventory[{Slot:33b}].macro.id set string storage math:data Inventory[{Slot:33b}].id 10
data modify storage math:data Inventory[{Slot:34b}].macro.id set string storage math:data Inventory[{Slot:34b}].id 10
data modify storage math:data Inventory[{Slot:35b}].macro.id set string storage math:data Inventory[{Slot:35b}].id 10
data modify storage math:data Inventory[{Slot:36b}].macro.id set string storage math:data Inventory[{Slot:36b}].id 10
data modify storage math:data Inventory[{Slot:37b}].macro.id set string storage math:data Inventory[{Slot:37b}].id 10
data modify storage math:data Inventory[{Slot:38b}].macro.id set string storage math:data Inventory[{Slot:38b}].id 10
data modify storage math:data Inventory[{Slot:39b}].macro.id set string storage math:data Inventory[{Slot:39b}].id 10
data modify storage math:data Inventory[{Slot:40b}].macro.id set string storage math:data Inventory[{Slot:40b}].id 10
data modify storage math:data Inventory[{Slot:41b}].macro.id set string storage math:data Inventory[{Slot:41b}].id 10
data modify storage math:data Inventory[{Slot:42b}].macro.id set string storage math:data Inventory[{Slot:42b}].id 10
data modify storage math:data Inventory[{Slot:43b}].macro.id set string storage math:data Inventory[{Slot:43b}].id 10
data modify storage math:data Inventory[{Slot:44b}].macro.id set string storage math:data Inventory[{Slot:44b}].id 10
data modify storage math:data Inventory[{Slot:45b}].macro.id set string storage math:data Inventory[{Slot:45b}].id 10
data modify storage math:data Inventory[{Slot:46b}].macro.id set string storage math:data Inventory[{Slot:46b}].id 10
data modify storage math:data Inventory[{Slot:47b}].macro.id set string storage math:data Inventory[{Slot:47b}].id 10
data modify storage math:data Inventory[{Slot:48b}].macro.id set string storage math:data Inventory[{Slot:48b}].id 10
data modify storage math:data Inventory[{Slot:49b}].macro.id set string storage math:data Inventory[{Slot:49b}].id 10
data modify storage math:data Inventory[{Slot:50b}].macro.id set string storage math:data Inventory[{Slot:50b}].id 10
data modify storage math:data Inventory[{Slot:51b}].macro.id set string storage math:data Inventory[{Slot:51b}].id 10
data modify storage math:data Inventory[{Slot:52b}].macro.id set string storage math:data Inventory[{Slot:52b}].id 10
data modify storage math:data Inventory[{Slot:53b}].macro.id set string storage math:data Inventory[{Slot:53b}].id 10

data modify storage math:data Inventory[{Slot:0b}].macro.item_model set from storage math:data Inventory[{Slot:0b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:1b}].macro.item_model set from storage math:data Inventory[{Slot:1b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:2b}].macro.item_model set from storage math:data Inventory[{Slot:2b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:3b}].macro.item_model set from storage math:data Inventory[{Slot:3b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:4b}].macro.item_model set from storage math:data Inventory[{Slot:4b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:5b}].macro.item_model set from storage math:data Inventory[{Slot:5b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:6b}].macro.item_model set from storage math:data Inventory[{Slot:6b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:7b}].macro.item_model set from storage math:data Inventory[{Slot:7b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:8b}].macro.item_model set from storage math:data Inventory[{Slot:8b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:9b}].macro.item_model set from storage math:data Inventory[{Slot:9b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:10b}].macro.item_model set from storage math:data Inventory[{Slot:10b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:11b}].macro.item_model set from storage math:data Inventory[{Slot:11b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:12b}].macro.item_model set from storage math:data Inventory[{Slot:12b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:13b}].macro.item_model set from storage math:data Inventory[{Slot:13b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:14b}].macro.item_model set from storage math:data Inventory[{Slot:14b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:15b}].macro.item_model set from storage math:data Inventory[{Slot:15b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:16b}].macro.item_model set from storage math:data Inventory[{Slot:16b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:17b}].macro.item_model set from storage math:data Inventory[{Slot:17b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:18b}].macro.item_model set from storage math:data Inventory[{Slot:18b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:19b}].macro.item_model set from storage math:data Inventory[{Slot:19b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:20b}].macro.item_model set from storage math:data Inventory[{Slot:20b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:21b}].macro.item_model set from storage math:data Inventory[{Slot:21b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:22b}].macro.item_model set from storage math:data Inventory[{Slot:22b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:23b}].macro.item_model set from storage math:data Inventory[{Slot:23b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:24b}].macro.item_model set from storage math:data Inventory[{Slot:24b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:25b}].macro.item_model set from storage math:data Inventory[{Slot:25b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:26b}].macro.item_model set from storage math:data Inventory[{Slot:26b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:27b}].macro.item_model set from storage math:data Inventory[{Slot:27b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:28b}].macro.item_model set from storage math:data Inventory[{Slot:28b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:29b}].macro.item_model set from storage math:data Inventory[{Slot:29b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:30b}].macro.item_model set from storage math:data Inventory[{Slot:30b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:31b}].macro.item_model set from storage math:data Inventory[{Slot:31b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:32b}].macro.item_model set from storage math:data Inventory[{Slot:32b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:33b}].macro.item_model set from storage math:data Inventory[{Slot:33b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:34b}].macro.item_model set from storage math:data Inventory[{Slot:34b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:35b}].macro.item_model set from storage math:data Inventory[{Slot:35b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:36b}].macro.item_model set from storage math:data Inventory[{Slot:36b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:37b}].macro.item_model set from storage math:data Inventory[{Slot:37b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:38b}].macro.item_model set from storage math:data Inventory[{Slot:38b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:39b}].macro.item_model set from storage math:data Inventory[{Slot:39b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:40b}].macro.item_model set from storage math:data Inventory[{Slot:40b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:41b}].macro.item_model set from storage math:data Inventory[{Slot:41b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:42b}].macro.item_model set from storage math:data Inventory[{Slot:42b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:43b}].macro.item_model set from storage math:data Inventory[{Slot:43b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:44b}].macro.item_model set from storage math:data Inventory[{Slot:44b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:45b}].macro.item_model set from storage math:data Inventory[{Slot:45b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:46b}].macro.item_model set from storage math:data Inventory[{Slot:46b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:47b}].macro.item_model set from storage math:data Inventory[{Slot:47b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:48b}].macro.item_model set from storage math:data Inventory[{Slot:48b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:49b}].macro.item_model set from storage math:data Inventory[{Slot:49b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:50b}].macro.item_model set from storage math:data Inventory[{Slot:50b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:51b}].macro.item_model set from storage math:data Inventory[{Slot:51b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:52b}].macro.item_model set from storage math:data Inventory[{Slot:52b}].components."minecraft:item_model"
data modify storage math:data Inventory[{Slot:53b}].macro.item_model set from storage math:data Inventory[{Slot:53b}].components."minecraft:item_model"


execute unless data storage math:data Inventory[{Slot:0b}].macro.item_model run data modify storage math:data Inventory[{Slot:0b}].macro.item_model set from storage math:data Inventory[{Slot:0b}].id
execute unless data storage math:data Inventory[{Slot:1b}].macro.item_model run data modify storage math:data Inventory[{Slot:1b}].macro.item_model set from storage math:data Inventory[{Slot:1b}].id
execute unless data storage math:data Inventory[{Slot:2b}].macro.item_model run data modify storage math:data Inventory[{Slot:2b}].macro.item_model set from storage math:data Inventory[{Slot:2b}].id
execute unless data storage math:data Inventory[{Slot:3b}].macro.item_model run data modify storage math:data Inventory[{Slot:3b}].macro.item_model set from storage math:data Inventory[{Slot:3b}].id
execute unless data storage math:data Inventory[{Slot:4b}].macro.item_model run data modify storage math:data Inventory[{Slot:4b}].macro.item_model set from storage math:data Inventory[{Slot:4b}].id
execute unless data storage math:data Inventory[{Slot:5b}].macro.item_model run data modify storage math:data Inventory[{Slot:5b}].macro.item_model set from storage math:data Inventory[{Slot:5b}].id
execute unless data storage math:data Inventory[{Slot:6b}].macro.item_model run data modify storage math:data Inventory[{Slot:6b}].macro.item_model set from storage math:data Inventory[{Slot:6b}].id
execute unless data storage math:data Inventory[{Slot:7b}].macro.item_model run data modify storage math:data Inventory[{Slot:7b}].macro.item_model set from storage math:data Inventory[{Slot:7b}].id
execute unless data storage math:data Inventory[{Slot:8b}].macro.item_model run data modify storage math:data Inventory[{Slot:8b}].macro.item_model set from storage math:data Inventory[{Slot:8b}].id
execute unless data storage math:data Inventory[{Slot:9b}].macro.item_model run data modify storage math:data Inventory[{Slot:9b}].macro.item_model set from storage math:data Inventory[{Slot:9b}].id
execute unless data storage math:data Inventory[{Slot:10b}].macro.item_model run data modify storage math:data Inventory[{Slot:10b}].macro.item_model set from storage math:data Inventory[{Slot:10b}].id
execute unless data storage math:data Inventory[{Slot:11b}].macro.item_model run data modify storage math:data Inventory[{Slot:11b}].macro.item_model set from storage math:data Inventory[{Slot:11b}].id
execute unless data storage math:data Inventory[{Slot:12b}].macro.item_model run data modify storage math:data Inventory[{Slot:12b}].macro.item_model set from storage math:data Inventory[{Slot:12b}].id
execute unless data storage math:data Inventory[{Slot:13b}].macro.item_model run data modify storage math:data Inventory[{Slot:13b}].macro.item_model set from storage math:data Inventory[{Slot:13b}].id
execute unless data storage math:data Inventory[{Slot:14b}].macro.item_model run data modify storage math:data Inventory[{Slot:14b}].macro.item_model set from storage math:data Inventory[{Slot:14b}].id
execute unless data storage math:data Inventory[{Slot:15b}].macro.item_model run data modify storage math:data Inventory[{Slot:15b}].macro.item_model set from storage math:data Inventory[{Slot:15b}].id
execute unless data storage math:data Inventory[{Slot:16b}].macro.item_model run data modify storage math:data Inventory[{Slot:16b}].macro.item_model set from storage math:data Inventory[{Slot:16b}].id
execute unless data storage math:data Inventory[{Slot:17b}].macro.item_model run data modify storage math:data Inventory[{Slot:17b}].macro.item_model set from storage math:data Inventory[{Slot:17b}].id
execute unless data storage math:data Inventory[{Slot:18b}].macro.item_model run data modify storage math:data Inventory[{Slot:18b}].macro.item_model set from storage math:data Inventory[{Slot:18b}].id
execute unless data storage math:data Inventory[{Slot:19b}].macro.item_model run data modify storage math:data Inventory[{Slot:19b}].macro.item_model set from storage math:data Inventory[{Slot:19b}].id
execute unless data storage math:data Inventory[{Slot:20b}].macro.item_model run data modify storage math:data Inventory[{Slot:20b}].macro.item_model set from storage math:data Inventory[{Slot:20b}].id
execute unless data storage math:data Inventory[{Slot:21b}].macro.item_model run data modify storage math:data Inventory[{Slot:21b}].macro.item_model set from storage math:data Inventory[{Slot:21b}].id
execute unless data storage math:data Inventory[{Slot:22b}].macro.item_model run data modify storage math:data Inventory[{Slot:22b}].macro.item_model set from storage math:data Inventory[{Slot:22b}].id
execute unless data storage math:data Inventory[{Slot:23b}].macro.item_model run data modify storage math:data Inventory[{Slot:23b}].macro.item_model set from storage math:data Inventory[{Slot:23b}].id
execute unless data storage math:data Inventory[{Slot:24b}].macro.item_model run data modify storage math:data Inventory[{Slot:24b}].macro.item_model set from storage math:data Inventory[{Slot:24b}].id
execute unless data storage math:data Inventory[{Slot:25b}].macro.item_model run data modify storage math:data Inventory[{Slot:25b}].macro.item_model set from storage math:data Inventory[{Slot:25b}].id
execute unless data storage math:data Inventory[{Slot:26b}].macro.item_model run data modify storage math:data Inventory[{Slot:26b}].macro.item_model set from storage math:data Inventory[{Slot:26b}].id
execute unless data storage math:data Inventory[{Slot:27b}].macro.item_model run data modify storage math:data Inventory[{Slot:27b}].macro.item_model set from storage math:data Inventory[{Slot:27b}].id
execute unless data storage math:data Inventory[{Slot:28b}].macro.item_model run data modify storage math:data Inventory[{Slot:28b}].macro.item_model set from storage math:data Inventory[{Slot:28b}].id
execute unless data storage math:data Inventory[{Slot:29b}].macro.item_model run data modify storage math:data Inventory[{Slot:29b}].macro.item_model set from storage math:data Inventory[{Slot:29b}].id
execute unless data storage math:data Inventory[{Slot:30b}].macro.item_model run data modify storage math:data Inventory[{Slot:30b}].macro.item_model set from storage math:data Inventory[{Slot:30b}].id
execute unless data storage math:data Inventory[{Slot:31b}].macro.item_model run data modify storage math:data Inventory[{Slot:31b}].macro.item_model set from storage math:data Inventory[{Slot:31b}].id
execute unless data storage math:data Inventory[{Slot:32b}].macro.item_model run data modify storage math:data Inventory[{Slot:32b}].macro.item_model set from storage math:data Inventory[{Slot:32b}].id
execute unless data storage math:data Inventory[{Slot:33b}].macro.item_model run data modify storage math:data Inventory[{Slot:33b}].macro.item_model set from storage math:data Inventory[{Slot:33b}].id
execute unless data storage math:data Inventory[{Slot:34b}].macro.item_model run data modify storage math:data Inventory[{Slot:34b}].macro.item_model set from storage math:data Inventory[{Slot:34b}].id
execute unless data storage math:data Inventory[{Slot:35b}].macro.item_model run data modify storage math:data Inventory[{Slot:35b}].macro.item_model set from storage math:data Inventory[{Slot:35b}].id
execute unless data storage math:data Inventory[{Slot:36b}].macro.item_model run data modify storage math:data Inventory[{Slot:36b}].macro.item_model set from storage math:data Inventory[{Slot:36b}].id
execute unless data storage math:data Inventory[{Slot:37b}].macro.item_model run data modify storage math:data Inventory[{Slot:37b}].macro.item_model set from storage math:data Inventory[{Slot:37b}].id
execute unless data storage math:data Inventory[{Slot:38b}].macro.item_model run data modify storage math:data Inventory[{Slot:38b}].macro.item_model set from storage math:data Inventory[{Slot:38b}].id
execute unless data storage math:data Inventory[{Slot:39b}].macro.item_model run data modify storage math:data Inventory[{Slot:39b}].macro.item_model set from storage math:data Inventory[{Slot:39b}].id
execute unless data storage math:data Inventory[{Slot:40b}].macro.item_model run data modify storage math:data Inventory[{Slot:40b}].macro.item_model set from storage math:data Inventory[{Slot:40b}].id
execute unless data storage math:data Inventory[{Slot:41b}].macro.item_model run data modify storage math:data Inventory[{Slot:41b}].macro.item_model set from storage math:data Inventory[{Slot:41b}].id
execute unless data storage math:data Inventory[{Slot:42b}].macro.item_model run data modify storage math:data Inventory[{Slot:42b}].macro.item_model set from storage math:data Inventory[{Slot:42b}].id
execute unless data storage math:data Inventory[{Slot:43b}].macro.item_model run data modify storage math:data Inventory[{Slot:43b}].macro.item_model set from storage math:data Inventory[{Slot:43b}].id
execute unless data storage math:data Inventory[{Slot:44b}].macro.item_model run data modify storage math:data Inventory[{Slot:44b}].macro.item_model set from storage math:data Inventory[{Slot:44b}].id
execute unless data storage math:data Inventory[{Slot:45b}].macro.item_model run data modify storage math:data Inventory[{Slot:45b}].macro.item_model set from storage math:data Inventory[{Slot:45b}].id
execute unless data storage math:data Inventory[{Slot:46b}].macro.item_model run data modify storage math:data Inventory[{Slot:46b}].macro.item_model set from storage math:data Inventory[{Slot:46b}].id
execute unless data storage math:data Inventory[{Slot:47b}].macro.item_model run data modify storage math:data Inventory[{Slot:47b}].macro.item_model set from storage math:data Inventory[{Slot:47b}].id
execute unless data storage math:data Inventory[{Slot:48b}].macro.item_model run data modify storage math:data Inventory[{Slot:48b}].macro.item_model set from storage math:data Inventory[{Slot:48b}].id
execute unless data storage math:data Inventory[{Slot:49b}].macro.item_model run data modify storage math:data Inventory[{Slot:49b}].macro.item_model set from storage math:data Inventory[{Slot:49b}].id
execute unless data storage math:data Inventory[{Slot:50b}].macro.item_model run data modify storage math:data Inventory[{Slot:50b}].macro.item_model set from storage math:data Inventory[{Slot:50b}].id
execute unless data storage math:data Inventory[{Slot:51b}].macro.item_model run data modify storage math:data Inventory[{Slot:51b}].macro.item_model set from storage math:data Inventory[{Slot:51b}].id
execute unless data storage math:data Inventory[{Slot:52b}].macro.item_model run data modify storage math:data Inventory[{Slot:52b}].macro.item_model set from storage math:data Inventory[{Slot:52b}].id
execute unless data storage math:data Inventory[{Slot:53b}].macro.item_model run data modify storage math:data Inventory[{Slot:53b}].macro.item_model set from storage math:data Inventory[{Slot:53b}].id

execute if data storage math:data equipment.offhand.components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/weapon.offhand with storage math:data equipment.offhand.macro
execute unless data storage math:data equipment.offhand.components."minecraft:item_name" if items entity @s weapon.offhand #_main_:blocks run function _main_:games/global/player/inventory/freeze/weapon.offhand.block with storage math:data equipment.offhand.macro
execute unless data storage math:data equipment.offhand.components."minecraft:item_name" if items entity @s weapon.offhand * unless items entity @s weapon.offhand #_main_:blocks run function _main_:games/global/player/inventory/freeze/weapon.offhand.item with storage math:data equipment.offhand.macro

execute if data storage math:data equipment.head.components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/armor.head with storage math:data equipment.head.macro
execute unless data storage math:data equipment.head.components."minecraft:item_name" if items entity @s armor.head #_main_:blocks run function _main_:games/global/player/inventory/freeze/armor.head.block with storage math:data equipment.head.macro
execute unless data storage math:data equipment.head.components."minecraft:item_name" if items entity @s armor.head * unless items entity @s armor.head #_main_:blocks run function _main_:games/global/player/inventory/freeze/armor.head.item with storage math:data equipment.head.macro

execute if data storage math:data equipment.chest.components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/armor.chest with storage math:data equipment.chest.macro
execute unless data storage math:data equipment.chest.components."minecraft:item_name" if items entity @s armor.chest #_main_:blocks run function _main_:games/global/player/inventory/freeze/armor.chest.block with storage math:data equipment.chest.macro
execute unless data storage math:data equipment.chest.components."minecraft:item_name" if items entity @s armor.chest * unless items entity @s armor.chest #_main_:blocks run function _main_:games/global/player/inventory/freeze/armor.chest.item with storage math:data equipment.chest.macro

execute if data storage math:data equipment.legs.components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/armor.legs with storage math:data equipment.legs.macro
execute unless data storage math:data equipment.legs.components."minecraft:item_name" if items entity @s armor.legs #_main_:blocks run function _main_:games/global/player/inventory/freeze/armor.legs.block with storage math:data equipment.legs.macro
execute unless data storage math:data equipment.legs.components."minecraft:item_name" if items entity @s armor.legs * unless items entity @s armor.legs #_main_:blocks run function _main_:games/global/player/inventory/freeze/armor.legs.item with storage math:data equipment.legs.macro

execute if data storage math:data equipment.feet.components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/armor.feet with storage math:data equipment.feet.macro
execute unless data storage math:data equipment.feet.components."minecraft:item_name" if items entity @s armor.feet #_main_:blocks run function _main_:games/global/player/inventory/freeze/armor.feet.block with storage math:data equipment.feet.macro
execute unless data storage math:data equipment.feet.components."minecraft:item_name" if items entity @s armor.feet * unless items entity @s armor.feet #_main_:blocks run function _main_:games/global/player/inventory/freeze/armor.feet.item with storage math:data equipment.feet.macro

execute if data storage math:data Inventory[{Slot:0b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.0 with storage math:data Inventory[{Slot:0b}].macro
execute if data storage math:data Inventory[{Slot:1b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.1 with storage math:data Inventory[{Slot:1b}].macro
execute if data storage math:data Inventory[{Slot:2b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.2 with storage math:data Inventory[{Slot:2b}].macro
execute if data storage math:data Inventory[{Slot:3b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.3 with storage math:data Inventory[{Slot:3b}].macro
execute if data storage math:data Inventory[{Slot:4b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.4 with storage math:data Inventory[{Slot:4b}].macro
execute if data storage math:data Inventory[{Slot:5b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.5 with storage math:data Inventory[{Slot:5b}].macro
execute if data storage math:data Inventory[{Slot:6b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.6 with storage math:data Inventory[{Slot:6b}].macro
execute if data storage math:data Inventory[{Slot:7b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.7 with storage math:data Inventory[{Slot:7b}].macro
execute if data storage math:data Inventory[{Slot:8b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.8 with storage math:data Inventory[{Slot:8b}].macro
execute if data storage math:data Inventory[{Slot:9b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.9 with storage math:data Inventory[{Slot:9b}].macro
execute unless data storage math:data Inventory[{Slot:0b}].components."minecraft:item_name" if items entity @s container.0 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.0.block with storage math:data Inventory[{Slot:0b}].macro
execute unless data storage math:data Inventory[{Slot:1b}].components."minecraft:item_name" if items entity @s container.1 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.1.block with storage math:data Inventory[{Slot:1b}].macro
execute unless data storage math:data Inventory[{Slot:2b}].components."minecraft:item_name" if items entity @s container.2 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.2.block with storage math:data Inventory[{Slot:2b}].macro
execute unless data storage math:data Inventory[{Slot:3b}].components."minecraft:item_name" if items entity @s container.3 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.3.block with storage math:data Inventory[{Slot:3b}].macro
execute unless data storage math:data Inventory[{Slot:4b}].components."minecraft:item_name" if items entity @s container.4 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.4.block with storage math:data Inventory[{Slot:4b}].macro
execute unless data storage math:data Inventory[{Slot:5b}].components."minecraft:item_name" if items entity @s container.5 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.5.block with storage math:data Inventory[{Slot:5b}].macro
execute unless data storage math:data Inventory[{Slot:6b}].components."minecraft:item_name" if items entity @s container.6 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.6.block with storage math:data Inventory[{Slot:6b}].macro
execute unless data storage math:data Inventory[{Slot:7b}].components."minecraft:item_name" if items entity @s container.7 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.7.block with storage math:data Inventory[{Slot:7b}].macro
execute unless data storage math:data Inventory[{Slot:8b}].components."minecraft:item_name" if items entity @s container.8 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.8.block with storage math:data Inventory[{Slot:8b}].macro
execute unless data storage math:data Inventory[{Slot:9b}].components."minecraft:item_name" if items entity @s container.9 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.9.block with storage math:data Inventory[{Slot:9b}].macro
execute unless data storage math:data Inventory[{Slot:0b}].components."minecraft:item_name" if items entity @s container.0 * unless items entity @s container.0 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.0.item with storage math:data Inventory[{Slot:0b}].macro
execute unless data storage math:data Inventory[{Slot:1b}].components."minecraft:item_name" if items entity @s container.1 * unless items entity @s container.1 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.1.item with storage math:data Inventory[{Slot:1b}].macro
execute unless data storage math:data Inventory[{Slot:2b}].components."minecraft:item_name" if items entity @s container.2 * unless items entity @s container.2 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.2.item with storage math:data Inventory[{Slot:2b}].macro
execute unless data storage math:data Inventory[{Slot:3b}].components."minecraft:item_name" if items entity @s container.3 * unless items entity @s container.3 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.3.item with storage math:data Inventory[{Slot:3b}].macro
execute unless data storage math:data Inventory[{Slot:4b}].components."minecraft:item_name" if items entity @s container.4 * unless items entity @s container.4 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.4.item with storage math:data Inventory[{Slot:4b}].macro
execute unless data storage math:data Inventory[{Slot:5b}].components."minecraft:item_name" if items entity @s container.5 * unless items entity @s container.5 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.5.item with storage math:data Inventory[{Slot:5b}].macro
execute unless data storage math:data Inventory[{Slot:6b}].components."minecraft:item_name" if items entity @s container.6 * unless items entity @s container.6 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.6.item with storage math:data Inventory[{Slot:6b}].macro
execute unless data storage math:data Inventory[{Slot:7b}].components."minecraft:item_name" if items entity @s container.7 * unless items entity @s container.7 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.7.item with storage math:data Inventory[{Slot:7b}].macro
execute unless data storage math:data Inventory[{Slot:8b}].components."minecraft:item_name" if items entity @s container.8 * unless items entity @s container.8 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.8.item with storage math:data Inventory[{Slot:8b}].macro
execute unless data storage math:data Inventory[{Slot:9b}].components."minecraft:item_name" if items entity @s container.9 * unless items entity @s container.9 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.9.item with storage math:data Inventory[{Slot:9b}].macro


execute if data storage math:data Inventory[{Slot:10b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.10 with storage math:data Inventory[{Slot:10b}].macro
execute if data storage math:data Inventory[{Slot:11b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.11 with storage math:data Inventory[{Slot:11b}].macro
execute if data storage math:data Inventory[{Slot:12b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.12 with storage math:data Inventory[{Slot:12b}].macro
execute if data storage math:data Inventory[{Slot:13b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.13 with storage math:data Inventory[{Slot:13b}].macro
execute if data storage math:data Inventory[{Slot:14b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.14 with storage math:data Inventory[{Slot:14b}].macro
execute if data storage math:data Inventory[{Slot:15b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.15 with storage math:data Inventory[{Slot:15b}].macro
execute if data storage math:data Inventory[{Slot:16b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.16 with storage math:data Inventory[{Slot:16b}].macro
execute if data storage math:data Inventory[{Slot:17b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.17 with storage math:data Inventory[{Slot:17b}].macro
execute if data storage math:data Inventory[{Slot:18b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.18 with storage math:data Inventory[{Slot:18b}].macro
execute if data storage math:data Inventory[{Slot:19b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.19 with storage math:data Inventory[{Slot:19b}].macro
execute unless data storage math:data Inventory[{Slot:10b}].components."minecraft:item_name" if items entity @s container.10 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.10.block with storage math:data Inventory[{Slot:10b}].macro
execute unless data storage math:data Inventory[{Slot:11b}].components."minecraft:item_name" if items entity @s container.11 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.11.block with storage math:data Inventory[{Slot:11b}].macro
execute unless data storage math:data Inventory[{Slot:12b}].components."minecraft:item_name" if items entity @s container.12 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.12.block with storage math:data Inventory[{Slot:12b}].macro
execute unless data storage math:data Inventory[{Slot:13b}].components."minecraft:item_name" if items entity @s container.13 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.13.block with storage math:data Inventory[{Slot:13b}].macro
execute unless data storage math:data Inventory[{Slot:14b}].components."minecraft:item_name" if items entity @s container.14 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.14.block with storage math:data Inventory[{Slot:14b}].macro
execute unless data storage math:data Inventory[{Slot:15b}].components."minecraft:item_name" if items entity @s container.15 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.15.block with storage math:data Inventory[{Slot:15b}].macro
execute unless data storage math:data Inventory[{Slot:16b}].components."minecraft:item_name" if items entity @s container.16 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.16.block with storage math:data Inventory[{Slot:16b}].macro
execute unless data storage math:data Inventory[{Slot:17b}].components."minecraft:item_name" if items entity @s container.17 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.17.block with storage math:data Inventory[{Slot:17b}].macro
execute unless data storage math:data Inventory[{Slot:18b}].components."minecraft:item_name" if items entity @s container.18 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.18.block with storage math:data Inventory[{Slot:18b}].macro
execute unless data storage math:data Inventory[{Slot:19b}].components."minecraft:item_name" if items entity @s container.19 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.19.block with storage math:data Inventory[{Slot:19b}].macro
execute unless data storage math:data Inventory[{Slot:10b}].components."minecraft:item_name" if items entity @s container.10 * unless items entity @s container.10 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.10.item with storage math:data Inventory[{Slot:10b}].macro
execute unless data storage math:data Inventory[{Slot:11b}].components."minecraft:item_name" if items entity @s container.11 * unless items entity @s container.11 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.11.item with storage math:data Inventory[{Slot:11b}].macro
execute unless data storage math:data Inventory[{Slot:12b}].components."minecraft:item_name" if items entity @s container.12 * unless items entity @s container.12 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.12.item with storage math:data Inventory[{Slot:12b}].macro
execute unless data storage math:data Inventory[{Slot:13b}].components."minecraft:item_name" if items entity @s container.13 * unless items entity @s container.13 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.13.item with storage math:data Inventory[{Slot:13b}].macro
execute unless data storage math:data Inventory[{Slot:14b}].components."minecraft:item_name" if items entity @s container.14 * unless items entity @s container.14 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.14.item with storage math:data Inventory[{Slot:14b}].macro
execute unless data storage math:data Inventory[{Slot:15b}].components."minecraft:item_name" if items entity @s container.15 * unless items entity @s container.15 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.15.item with storage math:data Inventory[{Slot:15b}].macro
execute unless data storage math:data Inventory[{Slot:16b}].components."minecraft:item_name" if items entity @s container.16 * unless items entity @s container.16 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.16.item with storage math:data Inventory[{Slot:16b}].macro
execute unless data storage math:data Inventory[{Slot:17b}].components."minecraft:item_name" if items entity @s container.17 * unless items entity @s container.17 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.17.item with storage math:data Inventory[{Slot:17b}].macro
execute unless data storage math:data Inventory[{Slot:18b}].components."minecraft:item_name" if items entity @s container.18 * unless items entity @s container.18 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.18.item with storage math:data Inventory[{Slot:18b}].macro
execute unless data storage math:data Inventory[{Slot:19b}].components."minecraft:item_name" if items entity @s container.19 * unless items entity @s container.19 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.19.item with storage math:data Inventory[{Slot:19b}].macro

execute if data storage math:data Inventory[{Slot:20b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.20 with storage math:data Inventory[{Slot:20b}].macro
execute if data storage math:data Inventory[{Slot:21b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.21 with storage math:data Inventory[{Slot:21b}].macro
execute if data storage math:data Inventory[{Slot:22b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.22 with storage math:data Inventory[{Slot:22b}].macro
execute if data storage math:data Inventory[{Slot:23b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.23 with storage math:data Inventory[{Slot:23b}].macro
execute if data storage math:data Inventory[{Slot:24b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.24 with storage math:data Inventory[{Slot:24b}].macro
execute if data storage math:data Inventory[{Slot:25b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.25 with storage math:data Inventory[{Slot:25b}].macro
execute if data storage math:data Inventory[{Slot:26b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.26 with storage math:data Inventory[{Slot:26b}].macro
execute if data storage math:data Inventory[{Slot:27b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.27 with storage math:data Inventory[{Slot:27b}].macro
execute if data storage math:data Inventory[{Slot:28b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.28 with storage math:data Inventory[{Slot:28b}].macro
execute if data storage math:data Inventory[{Slot:29b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.29 with storage math:data Inventory[{Slot:29b}].macro
execute unless data storage math:data Inventory[{Slot:20b}].components."minecraft:item_name" if items entity @s container.20 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.20.block with storage math:data Inventory[{Slot:20b}].macro
execute unless data storage math:data Inventory[{Slot:21b}].components."minecraft:item_name" if items entity @s container.21 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.21.block with storage math:data Inventory[{Slot:21b}].macro
execute unless data storage math:data Inventory[{Slot:22b}].components."minecraft:item_name" if items entity @s container.22 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.22.block with storage math:data Inventory[{Slot:22b}].macro
execute unless data storage math:data Inventory[{Slot:23b}].components."minecraft:item_name" if items entity @s container.23 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.23.block with storage math:data Inventory[{Slot:23b}].macro
execute unless data storage math:data Inventory[{Slot:24b}].components."minecraft:item_name" if items entity @s container.24 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.24.block with storage math:data Inventory[{Slot:24b}].macro
execute unless data storage math:data Inventory[{Slot:25b}].components."minecraft:item_name" if items entity @s container.25 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.25.block with storage math:data Inventory[{Slot:25b}].macro
execute unless data storage math:data Inventory[{Slot:26b}].components."minecraft:item_name" if items entity @s container.26 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.26.block with storage math:data Inventory[{Slot:26b}].macro
execute unless data storage math:data Inventory[{Slot:27b}].components."minecraft:item_name" if items entity @s container.27 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.27.block with storage math:data Inventory[{Slot:27b}].macro
execute unless data storage math:data Inventory[{Slot:28b}].components."minecraft:item_name" if items entity @s container.28 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.28.block with storage math:data Inventory[{Slot:28b}].macro
execute unless data storage math:data Inventory[{Slot:29b}].components."minecraft:item_name" if items entity @s container.29 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.29.block with storage math:data Inventory[{Slot:29b}].macro
execute unless data storage math:data Inventory[{Slot:20b}].components."minecraft:item_name" if items entity @s container.20 * unless items entity @s container.20 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.20.item with storage math:data Inventory[{Slot:20b}].macro
execute unless data storage math:data Inventory[{Slot:21b}].components."minecraft:item_name" if items entity @s container.21 * unless items entity @s container.21 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.21.item with storage math:data Inventory[{Slot:21b}].macro
execute unless data storage math:data Inventory[{Slot:22b}].components."minecraft:item_name" if items entity @s container.22 * unless items entity @s container.22 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.22.item with storage math:data Inventory[{Slot:22b}].macro
execute unless data storage math:data Inventory[{Slot:23b}].components."minecraft:item_name" if items entity @s container.23 * unless items entity @s container.23 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.23.item with storage math:data Inventory[{Slot:23b}].macro
execute unless data storage math:data Inventory[{Slot:24b}].components."minecraft:item_name" if items entity @s container.24 * unless items entity @s container.24 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.24.item with storage math:data Inventory[{Slot:24b}].macro
execute unless data storage math:data Inventory[{Slot:25b}].components."minecraft:item_name" if items entity @s container.25 * unless items entity @s container.25 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.25.item with storage math:data Inventory[{Slot:25b}].macro
execute unless data storage math:data Inventory[{Slot:26b}].components."minecraft:item_name" if items entity @s container.26 * unless items entity @s container.26 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.26.item with storage math:data Inventory[{Slot:26b}].macro
execute unless data storage math:data Inventory[{Slot:27b}].components."minecraft:item_name" if items entity @s container.27 * unless items entity @s container.27 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.27.item with storage math:data Inventory[{Slot:27b}].macro
execute unless data storage math:data Inventory[{Slot:28b}].components."minecraft:item_name" if items entity @s container.28 * unless items entity @s container.28 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.28.item with storage math:data Inventory[{Slot:28b}].macro
execute unless data storage math:data Inventory[{Slot:29b}].components."minecraft:item_name" if items entity @s container.29 * unless items entity @s container.29 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.29.item with storage math:data Inventory[{Slot:29b}].macro

execute if data storage math:data Inventory[{Slot:30b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.30 with storage math:data Inventory[{Slot:30b}].macro
execute if data storage math:data Inventory[{Slot:31b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.31 with storage math:data Inventory[{Slot:31b}].macro
execute if data storage math:data Inventory[{Slot:32b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.32 with storage math:data Inventory[{Slot:32b}].macro
execute if data storage math:data Inventory[{Slot:33b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.33 with storage math:data Inventory[{Slot:33b}].macro
execute if data storage math:data Inventory[{Slot:34b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.34 with storage math:data Inventory[{Slot:34b}].macro
execute if data storage math:data Inventory[{Slot:35b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.35 with storage math:data Inventory[{Slot:35b}].macro
execute if data storage math:data Inventory[{Slot:36b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.36 with storage math:data Inventory[{Slot:36b}].macro
execute if data storage math:data Inventory[{Slot:37b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.37 with storage math:data Inventory[{Slot:37b}].macro
execute if data storage math:data Inventory[{Slot:38b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.38 with storage math:data Inventory[{Slot:38b}].macro
execute if data storage math:data Inventory[{Slot:39b}].components."minecraft:item_name" run function _main_:games/global/player/inventory/freeze/container.39 with storage math:data Inventory[{Slot:39b}].macro
execute unless data storage math:data Inventory[{Slot:30b}].components."minecraft:item_name" if items entity @s container.30 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.30.block with storage math:data Inventory[{Slot:30b}].macro
execute unless data storage math:data Inventory[{Slot:31b}].components."minecraft:item_name" if items entity @s container.31 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.31.block with storage math:data Inventory[{Slot:31b}].macro
execute unless data storage math:data Inventory[{Slot:32b}].components."minecraft:item_name" if items entity @s container.32 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.32.block with storage math:data Inventory[{Slot:32b}].macro
execute unless data storage math:data Inventory[{Slot:33b}].components."minecraft:item_name" if items entity @s container.33 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.33.block with storage math:data Inventory[{Slot:33b}].macro
execute unless data storage math:data Inventory[{Slot:34b}].components."minecraft:item_name" if items entity @s container.34 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.34.block with storage math:data Inventory[{Slot:34b}].macro
execute unless data storage math:data Inventory[{Slot:35b}].components."minecraft:item_name" if items entity @s container.35 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.35.block with storage math:data Inventory[{Slot:35b}].macro
execute unless data storage math:data Inventory[{Slot:36b}].components."minecraft:item_name" if items entity @s container.36 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.36.block with storage math:data Inventory[{Slot:36b}].macro
execute unless data storage math:data Inventory[{Slot:37b}].components."minecraft:item_name" if items entity @s container.37 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.37.block with storage math:data Inventory[{Slot:37b}].macro
execute unless data storage math:data Inventory[{Slot:38b}].components."minecraft:item_name" if items entity @s container.38 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.38.block with storage math:data Inventory[{Slot:38b}].macro
execute unless data storage math:data Inventory[{Slot:39b}].components."minecraft:item_name" if items entity @s container.39 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.39.block with storage math:data Inventory[{Slot:39b}].macro
execute unless data storage math:data Inventory[{Slot:30b}].components."minecraft:item_name" if items entity @s container.30 * unless items entity @s container.30 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.30.item with storage math:data Inventory[{Slot:30b}].macro
execute unless data storage math:data Inventory[{Slot:31b}].components."minecraft:item_name" if items entity @s container.31 * unless items entity @s container.31 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.31.item with storage math:data Inventory[{Slot:31b}].macro
execute unless data storage math:data Inventory[{Slot:32b}].components."minecraft:item_name" if items entity @s container.32 * unless items entity @s container.32 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.32.item with storage math:data Inventory[{Slot:32b}].macro
execute unless data storage math:data Inventory[{Slot:33b}].components."minecraft:item_name" if items entity @s container.33 * unless items entity @s container.33 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.33.item with storage math:data Inventory[{Slot:33b}].macro
execute unless data storage math:data Inventory[{Slot:34b}].components."minecraft:item_name" if items entity @s container.34 * unless items entity @s container.34 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.34.item with storage math:data Inventory[{Slot:34b}].macro
execute unless data storage math:data Inventory[{Slot:35b}].components."minecraft:item_name" if items entity @s container.35 * unless items entity @s container.35 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.35.item with storage math:data Inventory[{Slot:35b}].macro
execute unless data storage math:data Inventory[{Slot:36b}].components."minecraft:item_name" if items entity @s container.36 * unless items entity @s container.36 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.36.item with storage math:data Inventory[{Slot:36b}].macro
execute unless data storage math:data Inventory[{Slot:37b}].components."minecraft:item_name" if items entity @s container.37 * unless items entity @s container.37 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.37.item with storage math:data Inventory[{Slot:37b}].macro
execute unless data storage math:data Inventory[{Slot:38b}].components."minecraft:item_name" if items entity @s container.38 * unless items entity @s container.38 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.38.item with storage math:data Inventory[{Slot:38b}].macro
execute unless data storage math:data Inventory[{Slot:39b}].components."minecraft:item_name" if items entity @s container.39 * unless items entity @s container.39 #_main_:blocks run function _main_:games/global/player/inventory/freeze/container.39.item with storage math:data Inventory[{Slot:39b}].macro








