function _main_:games/global/preset/get_game
fill 958 -64 990 1010 -30 1042 air
fill 9000 -64 9000 9031 -33 9015 air

function _main_:games/fireball_dodge/zone

function _rin_:api/protection/kill_from_origin


data modify storage _rin_:in inst set value "lobby"

scoreboard players set #search gameID 5


scoreboard players set #end rMath 1

execute as @a[predicate=_main_:search_game] run attribute @s attack_damage modifier remove cancel
execute as @a[predicate=_main_:search_game] run function _main_:games/global/player/return_to_lobby


function _main_:hub/gamerule/reset