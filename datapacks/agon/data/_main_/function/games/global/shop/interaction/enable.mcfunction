execute unless entity @s[type=player] run return fail

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID

execute unless entity @e[predicate=_main_:search_owner,tag=shop.private,type=interaction] summon interaction run function _main_:games/global/shop/interaction/summon




