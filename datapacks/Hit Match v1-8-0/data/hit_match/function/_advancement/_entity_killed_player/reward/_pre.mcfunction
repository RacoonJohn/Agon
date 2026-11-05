## AUTHOR : RacoonJohn

# Escape if detection is off
execute if score $detection ehm._ matches 0 run return 0

tag @s add hit_match.killed
