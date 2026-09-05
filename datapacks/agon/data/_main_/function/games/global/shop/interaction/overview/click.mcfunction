execute unless score @p[tag=shop.owner] shop.points >= @s shop.price run return run function _main_:games/global/shop/interaction/overview/not_enough

scoreboard players operation @a[tag=shop.owner] shop.points -= @s shop.price

function buttons:system/run_cmd with entity @s data

