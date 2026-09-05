advancement revoke @s only dapvp:system/sword_hit


#function dapvp:system/item/modify/remove_dura


#tag @s add dapvp.system.attacker
#
#execute rotated as @s rotated ~ 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^0.2 run function dapvp:system/get_pos
#execute store result score #x dapvp.math run data get storage dapvp:math Pos[0] 10000 
#execute store result score #z dapvp.math run data get storage dapvp:math Pos[2] 10000
#execute as @e[nbt={HurtTime:10s}] if function dapvp:system/attacker run function dapvp:system/kb
#
#tag @s remove dapvp.system.attacker


scoreboard players set #weapon.id dapvp.math 1

execute if items entity @s weapon.mainhand *[custom_data~{combo:"ws-3"}] run function dapvp:system/item/swords/combo/ws-3

function dapvp:system/item/combo/get_date
scoreboard players operation @s dapvp.combo.date = #temp dapvp.math

execute if score #combo.delay dapvp.math <= #swords.combo.delay dapvp.settings run return run function dapvp:system/item/swords/combo/success

function dapvp:system/item/swords/combo/fail


