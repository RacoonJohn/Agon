function _main_:games/global/shop/offer/summon/init

data modify entity @s item set from storage main:data in.item
data modify entity @s item_display set value "gui"

execute store result score @s shop.price run data get storage main:data in.price

