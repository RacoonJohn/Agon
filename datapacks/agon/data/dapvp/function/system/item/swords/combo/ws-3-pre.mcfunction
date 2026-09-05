
scoreboard players set @s dapvp.combo.change.id 1

scoreboard players operation @s dapvp.combo.change.date = #gametime dapvp.math
scoreboard players add @s dapvp.combo.change.date 8

function dapvp:system/item/swords/combo/ws-3_change
