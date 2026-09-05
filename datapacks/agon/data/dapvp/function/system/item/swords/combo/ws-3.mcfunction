#item modify entity @s weapon.mainhand dapvp:system/swords/generic
scoreboard players operation @s dapvp.combo.generic.date = #gametime dapvp.math
scoreboard players add @s dapvp.combo.generic.date 8


scoreboard players operation @s dapvp.boost.speed.date = #gametime dapvp.math
scoreboard players add @s dapvp.boost.speed.date 10
attribute @s movement_speed modifier add dapvp:boost 0.25 add_multiplied_base

scoreboard players set #weapon.id dapvp.math -1
