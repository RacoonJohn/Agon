

execute unless score @s gameID matches 1.. run return fail

execute unless entity @a[predicate=hit_match:is_source,predicate=!hit_match:is_victim] run return fail

scoreboard players add @s stats.round.hurt 1

#execute unless function hit_match:_pulse/victim/_ run scoreboard players add @s stats.round.death 1

