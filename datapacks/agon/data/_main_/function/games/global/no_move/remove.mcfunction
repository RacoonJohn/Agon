
attribute @s entity_interaction_range modifier remove cancel
attribute @s block_interaction_range modifier remove cancel
attribute @s attack_damage modifier remove cancel

scoreboard players operation #search _rin_global_ownerID = @s _rin_global_playerID
scoreboard players operation #search gameID = @s gameID

kill @e[predicate=_main_:search_game,predicate=_main_:search_owner,tag=noMove,type=#_main_:display]

