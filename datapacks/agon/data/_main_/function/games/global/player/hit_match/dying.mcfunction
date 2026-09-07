
scoreboard players reset @s death_detection

execute unless score @s gameID matches 1.. run return fail

scoreboard players add @s stats.round.death 1

execute store success score #is_direct rMath if entity @s[tag=hit.direct]

execute on attacker run function _main_:games/global/player/get_kill


