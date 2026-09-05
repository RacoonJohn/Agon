function _main_:games/global/preset/get_game
fill 928 -64 950 1088 -16 1110 air replace
execute positioned 9000 -64 9000 run fill ~ ~ ~ ~159 ~20 ~15 air


data modify storage _rin_:in inst set value "lobby"

scoreboard players set #search gameID 4


scoreboard players set #end rMath 1

execute as @a[predicate=_main_:search_game] run attribute @s attack_damage modifier remove cancel



execute as @a[predicate=_main_:search_game] run function _main_:games/global/player/return_to_lobby


function _main_:hub/gamerule/reset