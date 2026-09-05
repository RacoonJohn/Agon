advancement revoke @s only _main_:use/menu

execute unless entity @s[scores={gameID=0}] run return fail

scoreboard players set @s menu.use 1

execute if score @s menu.preUse matches 1 run return fail



scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID

execute unless entity @e[type=block_display,tag=menu] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^2 run return run function _main_:hub/menu/main

execute if entity @e[type=block_display,tag=menu,predicate=_main_:search_owner] run function _main_:hub/menu/close

