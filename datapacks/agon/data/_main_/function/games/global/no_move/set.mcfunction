

scoreboard players operation #search _rin_global_playerID = @s _rin_global_playerID
scoreboard players operation #search gameID = @s gameID
scoreboard players operation #search teamID = @s teamID

execute positioned ~ ~0.6 ~ summon item_display run function _main_:games/global/no_move/summon



