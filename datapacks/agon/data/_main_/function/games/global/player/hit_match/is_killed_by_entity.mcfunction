
execute unless score @s gameID matches 1.. run return fail

scoreboard players add @s stats.round.death 1

execute as @a[predicate=hit_match:is_source,predicate=!hit_match:is_victim] run function _main_:games/global/player/get_kill

