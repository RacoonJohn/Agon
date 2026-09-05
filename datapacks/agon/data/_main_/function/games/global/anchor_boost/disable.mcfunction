tag @s add disable

scoreboard players operation @s date = #gametime rMath
scoreboard players operation @s date += #anchorBoostDisableTime settings



execute on passengers run data merge entity @s {item:{id:"black_concrete"},transformation:{scale:[1,1,1],left_rotation:[1,1,1,0]}}
