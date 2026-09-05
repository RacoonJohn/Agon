function _main_:games/global/preset/get_game

fill 958 -64 990 1043 0 1075 air
fill 9000 -64 9000 9065 0 9065 air
execute positioned 980 -64 980 run kill @e[dx=100,dy=100,dz=100,type=item]

function _main_:games/pvpkit/zone

function _rin_:api/protection/kill_from_origin





data modify storage _rin_:in inst set value "lobby"

scoreboard players set #search gameID 6




execute as @a[predicate=_main_:search_game] run attribute @s max_health modifier remove block_fight
execute as @a[predicate=_main_:search_game] run attribute @s attack_damage modifier remove cancel



execute as @a[predicate=_main_:search_game] run function _main_:games/global/player/return_to_lobby
 
function _main_:hub/gamerule/reset