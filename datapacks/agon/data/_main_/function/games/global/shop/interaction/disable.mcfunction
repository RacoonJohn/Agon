execute unless entity @s[type=player] run return fail

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID

kill @e[predicate=_main_:search_owner,tag=shop.private,type=interaction]





