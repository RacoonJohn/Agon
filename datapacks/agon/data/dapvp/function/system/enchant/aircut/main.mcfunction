function dapvp:system/item/axes/generic

tag @s add dapvp.system.attacker

scoreboard players set #count dapvp.math 5
execute at @s positioned ~ ~0.5 ~ rotated ~ 0 positioned ^ ^ ^1 run function dapvp:system/enchant/aircut/raycast
scoreboard players set #count dapvp.math 5
execute at @s positioned ~ ~0.5 ~ rotated ~ -8 positioned ^ ^ ^1 run function dapvp:system/enchant/aircut/raycast
scoreboard players set #count dapvp.math 5
execute at @s positioned ~ ~0.5 ~ rotated ~ -16 positioned ^ ^ ^1 run function dapvp:system/enchant/aircut/raycast
scoreboard players set #count dapvp.math 5
execute at @s positioned ~ ~0.5 ~ rotated ~ -24 positioned ^ ^ ^1 run function dapvp:system/enchant/aircut/raycast

tag @s remove dapvp.system.attacker

scoreboard players set #weapon.id dapvp.math -1
function dapvp:system/item/combo/success
