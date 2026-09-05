advancement revoke @s only _main_:use/miniaturizer

execute unless data entity @s attributes[{id:"minecraft:scale",modifiers:[{id:"_main_:miniaturizer1"}]}] run return run attribute @s scale modifier add _main_:miniaturizer1 -0.15 add_multiplied_total

execute unless data entity @s attributes[{id:"minecraft:scale",modifiers:[{id:"_main_:miniaturizer2"}]}] run return run attribute @s scale modifier add _main_:miniaturizer2 -0.15 add_multiplied_total

execute unless data entity @s attributes[{id:"minecraft:scale",modifiers:[{id:"_main_:miniaturizer3"}]}] run return run attribute @s scale modifier add _main_:miniaturizer3 -0.15 add_multiplied_total


