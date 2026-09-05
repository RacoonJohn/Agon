scoreboard players set #search gameID 4

function _main_:games/global/game_count/round

function _main_:games/fbg/copy_map


tag @a[scores={teamID=1..}] remove spectate
gamemode survival @a[tag=!spectate]
spreadplayers 1028 1036 10 40 false @a[tag=!spectate]
execute as @a[tag=!spectate] run function _main_:games/fbg/init/rotate
execute as @a run function _main_:games/global/player/inventory/load

execute as @a run function _main_:games/global/player/effect/main
execute as @a run function _main_:games/global/player/state/reset_saturation
execute as @a run function _main_:games/global/player/state/reset_health

execute as @a[tag=!spectate] run function _main_:games/fbg/init/spawn



scoreboard players set #timer rMath 100
execute as @a[tag=!spectate] at @s run function _main_:games/global/no_move/set
scoreboard players set @s invulnerability_ticks 160


execute as @a[predicate=_main_:search_game] run attribute @s attack_damage modifier remove cancel

scoreboard players set #end rMath 0

