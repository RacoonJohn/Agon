
scoreboard players set #weapon.id dapvp.math 3


function dapvp:system/item/combo/get_date
scoreboard players operation @s dapvp.combo.date = #temp dapvp.math

execute if score #combo.delay dapvp.math <= #blocks.combo.delay dapvp.settings run return run function dapvp:system/item/block/combo/success


function dapvp:system/item/block/combo/fail

