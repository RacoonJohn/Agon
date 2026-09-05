

execute as @a run function _main_:games/global/stats/round_append

fill 958 -64 990 1043 0 1075 air
fill 9000 -64 9000 9065 0 9065 air

function _main_:games/block_fight/zone

function _rin_:api/protection/kill_from_origin


data modify storage _rin_:in inst set value "lobby"

scoreboard players set #search gameID 2




execute as @a[predicate=_main_:search_game] run attribute @s max_health modifier remove block_fight
execute as @a[predicate=_main_:search_game] run attribute @s attack_damage modifier remove cancel



execute as @a[predicate=_main_:search_game] run function _main_:games/global/player/return_to_lobby
 
function _main_:hub/gamerule/reset