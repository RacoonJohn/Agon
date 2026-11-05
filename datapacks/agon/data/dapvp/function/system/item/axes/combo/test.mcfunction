advancement revoke @s only dapvp:system/axe_hit


tag @s add dapvp.back_kb

return fail

scoreboard players set #weapon.id dapvp.math 2

execute if items entity @s weapon.mainhand *[custom_data~{combo:"wa-3"}] run function dapvp:system/item/axes/combo/wa-3

function dapvp:system/item/combo/get_date
scoreboard players operation @s dapvp.combo.date = #temp dapvp.math

execute if score #combo.delay dapvp.math <= #axes.combo.delay dapvp.settings run return run function dapvp:system/item/axes/combo/success

function dapvp:system/item/axes/combo/fail


