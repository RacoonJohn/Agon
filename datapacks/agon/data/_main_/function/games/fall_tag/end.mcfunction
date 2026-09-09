function _main_:games/global/preset/get_game

fill 958 -64 990 1009 0 1050 air
fill 9000 -64 9000 9031 -33 9031 air

scoreboard players set #X0 _rin_global 9968
scoreboard players set #Y0 _rin_global -64
scoreboard players set #Z0 _rin_global 10160
scoreboard players set #X1 _rin_global 9999 
scoreboard players set #Y1 _rin_global -33
scoreboard players set #Z1 _rin_global 10191
scoreboard players set #X2 _rin_global 968
scoreboard players set #Y2 _rin_global -64
scoreboard players set #Z2 _rin_global 1000

function _main_:games/fall_tag/zone

function _rin_:api/protection/kill_from_origin

data modify storage _rin_:in inst set value "lobby"



execute as @a[predicate=_main_:search_game] run function _main_:games/global/no_move/remove

scoreboard players set #end rMath 1

execute as @a[predicate=_main_:search_game] run attribute @s attack_damage modifier remove cancel



execute as @a[predicate=_main_:search_game] run function _main_:games/global/player/return_to_lobby

function _main_:hub/gamerule/reset