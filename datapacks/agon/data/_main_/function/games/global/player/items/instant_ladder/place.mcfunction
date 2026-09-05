

execute if data entity @s {Facing:4b} run setblock ~ ~ ~ ladder[facing=west]
execute if data entity @s {Facing:5b} run setblock ~ ~ ~ ladder[facing=east]

execute if data entity @s {Facing:2b} run setblock ~ ~ ~ ladder[facing=north]
execute if data entity @s {Facing:3b} run setblock ~ ~ ~ ladder[facing=south]

execute if data entity @s {Facing:0b} if entity @a[y_rotation=45..135] run setblock ~ ~ ~ ladder[facing=east]
execute if data entity @s {Facing:0b} if entity @a[y_rotation=225..315] run setblock ~ ~ ~ ladder[facing=west]
execute if data entity @s {Facing:0b} if entity @a[y_rotation=135..225] run setblock ~ ~ ~ ladder[facing=south]
execute if data entity @s {Facing:0b} if entity @a[y_rotation=315..405] run setblock ~ ~ ~ ladder[facing=north]
scoreboard players set #count rMath 1
execute if data entity @s {Facing:1b} run loot spawn ~ ~ ~ loot _main_:specials/ladder
execute if data entity @s {Facing:1b} run return run kill @s

execute if block ~ ~-1 ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~-1 ~
execute if block ~ ~-2 ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~-2 ~
execute if block ~ ~-3 ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~-3 ~
execute if block ~ ~-4 ~ air run clone ~ ~ ~ ~ ~ ~ ~ ~-4 ~



kill @s
