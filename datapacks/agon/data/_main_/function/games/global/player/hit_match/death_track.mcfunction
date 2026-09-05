execute if score @s ehm.death_detect.tracked matches 1 run function hit_match:_death_detect/untrack/_

data modify storage hit_match:data _.func."death_detect.track".in set value {poll_rate:1,lifetime:1000}
function hit_match:_death_detect/track/_
scoreboard players operation @s death_track.date = #gametime rMath
scoreboard players add @s death_track.date 1000
