
scoreboard players add @s stats.round.kill 1

function _main_:games/global/fx/kill

scoreboard players add @s[tag=vertigo.objective.kill] vertigo.completion 1
execute if score $is_direct_source ehm._ matches 0 run scoreboard players add @s[tag=vertigo.objective.kill_range] vertigo.completion 1
execute if score $is_direct_source ehm._ matches 1 run scoreboard players add @s[tag=vertigo.objective.kill_melee] vertigo.completion 1

execute if score $is_direct_source ehm._ matches 0 run scoreboard players operation @s[scores={gameID=8}] shop.points += #vertigo.kill_range.point settings
execute if score $is_direct_source ehm._ matches 1 run scoreboard players operation @s[scores={gameID=8}] shop.points += #vertigo.kill_melee.point settings

execute if entity @s[scores={gameID=8}] run function _main_:games/vertigo/player/show_gold

execute if entity @s[scores={gameID=8}] run effect give @s instant_health 1 1 true
