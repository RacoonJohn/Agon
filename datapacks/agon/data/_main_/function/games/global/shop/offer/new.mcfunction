execute unless entity @s[type=player] run return fail

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID

scoreboard players add #count shop.offerID 1

execute unless data storage math:data in{show_price:false,show_name:false} at @s anchored eyes positioned ^ ^ ^ summon text_display run function _main_:games/global/shop/offer/summon/price
execute if data storage math:data in{type:"item"} at @s anchored eyes positioned ^ ^ ^ summon item_display run return run function _main_:games/global/shop/offer/summon/item
execute if data storage math:data in{type:"text"} at @s anchored eyes positioned ^ ^ ^ summon text_display run return run function _main_:games/global/shop/offer/summon/text

