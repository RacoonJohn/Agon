
function _main_:games/global/preset/get_game

function _main_:games/global/game_count/round

function _main_:games/global/map/set

function _main_:games/vertigo/reset_map



kill @e[type=item]
kill @e[type=arrow]
kill @e[type=trident]
gamemode survival @a[scores={teamID=1..}] 


clear @a

execute as @a[scores={teamID=1..}] run function _main_:games/global/player/tp_spawn
execute as @a run function _main_:games/global/player/state/reset_saturation
execute as @a run function _main_:games/global/player/state/reset_health


function _main_:games/vertigo/phase/0

execute as @a[predicate=_main_:search_game] run attribute @s attack_damage modifier remove cancel

scoreboard players set #end rMath 0

