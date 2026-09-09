
function _main_:games/bridge/zone
function _rin_:api/protection/kill_from_origin


fill 975 -64 1000 1142 -24 1062 air
fill 9000 -64 9000 9173 0 9065 air

scoreboard players set #dx rMath 138
scoreboard players set #dy rMath 31
scoreboard players set #dz rMath 42
execute positioned 985 -64 1011 run function _main_:games/global/warn_zone/main


execute as @a[predicate=_main_:search_game] run function _main_:games/global/no_move/remove

data modify storage _rin_:in inst set value "lobby"

scoreboard players set #search gameID 1

execute as @a[predicate=_main_:search_game] run function _main_:games/global/player/return_to_lobby
 
function _main_:hub/gamerule/reset