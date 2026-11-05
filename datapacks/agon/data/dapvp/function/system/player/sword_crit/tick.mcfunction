attribute @s jump_strength modifier add dapvp:sword_crit 0.15 add_multiplied_total


execute store result score #x dapvp.math run data get entity @s Motion[1] 10

execute if score #x dapvp.math matches 1.. run return run function dapvp:system/player/sword_crit/reset_attributes
execute unless entity @s[tag=dapvp.injump] run return run function dapvp:system/player/sword_crit/reset_attributes

attribute @s safe_fall_distance modifier add dapvp:sword_crit 0.40 add_value
attribute @s gravity modifier add dapvp:sword_crit 0.35 add_multiplied_total
attribute @s attack_knockback modifier add dapvp:sword_crit 0.5 add_value

#attribute @s movement_speed modifier add dapvp:sword_crit 0.20 add_multiplied_total




