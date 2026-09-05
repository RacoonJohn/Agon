
function _main_:games/global/preset/get_game

function _main_:games/global/game_count/round

function _main_:games/fall_tag/reset_map



scoreboard players set #end rMath 0

tag @a[scores={teamID=1..}] remove spectate
gamemode survival @a[tag=!spectate]

execute as @a[scores={teamID=1..}] run function _main_:games/fall_tag/player/tp_spawn
execute as @a[scores={teamID=1..}] run function _main_:games/global/player/inventory/load
execute as @a[scores={teamID=1..}] run function _main_:games/global/player/effect/main
execute as @a run function _main_:games/global/player/state/reset_saturation
execute as @a run function _main_:games/global/player/state/reset_health

scoreboard players set #timer rMath 100
execute as @a[tag=!spectate] at @s run function _main_:games/global/no_move/set
scoreboard players set @s invulnerability_ticks 160

#scoreboard players operation #fall_tagTimer rMath = #gametime rMath
#scoreboard players operation #fall_tagTimer rMath += #fall_tagTimer settings
#scoreboard players add #fall_tagTimer rMath 101



execute as @a[predicate=_main_:search_game] run attribute @s attack_damage modifier remove cancel

scoreboard players set #end rMath 0

