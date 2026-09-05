
function dapvp:system/item/combo/success

#tellraw @a {score:{name:"@s",objective:"dapvp.combo.id-1"}}
#tellraw @a {score:{name:"@s",objective:"dapvp.combo.id-2"}}
#tellraw @a {score:{name:"@s",objective:"dapvp.combo.id-3"}}

execute if score @s dapvp.combo.id-1 matches 3 unless score @s dapvp.combo.id-2 matches 3 if score @s dapvp.combo.id-3 matches 3 run function dapvp:system/item/block/combo/b-2
