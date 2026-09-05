## AUTHOR : Picarrow




# ...
scoreboard players set #_is_entity_loaded ehm._ 1
execute if score @s ehm.death_detect.selectable matches 1 run scoreboard players operation @s ehm.death_detect.lifetime = @s ehm.death_detect.max_lifetime

# ...
scoreboard players set #in_dying_context ehm._ 1
execute unless score @s ehm.death_detect.selectable matches 1 at @s run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_111
#execute if score #immediate_respawn ehm._ matches 1 if score @s ehm.death_detect.immediate_respawn matches 1.. at @s run function hit_match:_death_detect/tick/loop_poll/loop_entry_in_live_queue/_111
scoreboard players reset #in_dying_context ehm._

scoreboard players reset @s ehm.death_detect.immediate_respawn

