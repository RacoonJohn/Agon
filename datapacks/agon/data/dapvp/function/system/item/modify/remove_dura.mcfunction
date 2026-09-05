
execute if entity @s[gamemode=creative] run return fail

execute store result score #temp dapvp.math run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:unbreaking"
scoreboard players add #temp dapvp.math 1

scoreboard players set #chance dapvp.math 10000
scoreboard players operation #chance dapvp.math /= #temp dapvp.math

execute unless predicate dapvp:system/chance run return fail



execute store result score #temp dapvp.math run data get entity @s SelectedItem.components."minecraft:damage"
scoreboard players add #temp dapvp.math 1
execute store result storage dapvp:math macro.x int 1 run scoreboard players get #temp dapvp.math
function dapvp:system/item/modify/dura_macro with storage dapvp:math macro

