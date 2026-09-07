

execute unless score @s gameID matches 1.. run return fail

execute unless entity @a[predicate=hit_match:is_victim,predicate=!hit_match:is_source] run return fail

execute if entity @a[predicate=hit_match:is_victim,predicate=!hit_match:is_source,scores={invulnerability_ticks=1..}] run return run function _main_:games/global/player/hit_match/hit_invulnerable


scoreboard players add @s stats.round.hit 1

#execute unless function hit_match:_pulse/victim/_ run scoreboard players add @s stats.round.kill 1
