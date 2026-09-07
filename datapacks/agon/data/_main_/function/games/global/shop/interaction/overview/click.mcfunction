execute unless score @p[tag=shop.owner] shop.points >= @s shop.price run return run function _main_:games/global/shop/interaction/overview/not_enough

scoreboard players operation @a[tag=shop.owner] shop.points -= @s shop.price
scoreboard players remove @s shop.count 1

function buttons:system/run_cmd with entity @s data

execute if score @s shop.count matches 1.. run return 1

scoreboard players operation #search shop.offerID = @s shop.offerID

kill @e[predicate=_main_:search_offer_id,tag=shop.private,type=#_main_:display]

