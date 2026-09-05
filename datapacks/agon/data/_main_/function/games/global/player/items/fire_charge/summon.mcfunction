rotate @s ~ ~

scoreboard players operation @s date = #gametime rMath
scoreboard players add @s date 60


scoreboard players operation @s _rin_global_ownerID = #search _rin_global_ownerID
tag @s remove new